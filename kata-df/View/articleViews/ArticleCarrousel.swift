//
//  ArticleCarrousel.swift
//  kata-df
//
//  Created by Mehdi on 09/03/2023.
//

import SwiftUI


struct ArticleCarrousel: View {
    static let modelData = ModelData()
    @State private var snappedItem = 0.0
    @State private var draggingItem = 0.0
    @State var activeIndex: Int = 0
    @State var isPresenting = false /// 1.
    
    var body: some View {
        
        VStack {
            Spacer()
            Text("Vos articles en Carousel mode")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("NavigationLabelColor"))
            Spacer()
            ZStack {
                ForEach(ArticleCarrousel.modelData.articles) { item in
                    
                    // article view
                    ZStack {
                        Image(item.cover)
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width * 0.8,height: UIScreen.main.bounds.height * 0.5)
                            .cornerRadius(10.0)
                            .clipped()
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("backgroudArticleDetail"))
                            .frame(width: UIScreen.main.bounds.width * 0.75,height: UIScreen.main.bounds.height * 0.48)
                        VStack {
                            Text(item.name)
                                .font(.title)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .padding()
                            Text(item.content)
                        }
                        .frame(width: UIScreen.main.bounds.width * 0.6,height: UIScreen.main.bounds.height * 0.47)
                    }
                    .scaleEffect(1.0 - abs(distance(item.id)) * 0.2 )
                    .opacity(1.0 - abs(distance(item.id)) * 0.3 )
                    .offset(x: myXOffset(item.id), y: 0)
                    .zIndex(1.0 - abs(distance(item.id)) * 0.1)
                }
            }
            .gesture(
                DragGesture()
                    .onChanged { value in
                        draggingItem = snappedItem + value.translation.width / 100
                    }
                    .onEnded { value in
                        withAnimation {
                            draggingItem = snappedItem + value.predictedEndTranslation.width / 100
                            draggingItem = round(draggingItem).remainder(dividingBy: Double(ArticleCarrousel.modelData.articles.count))
                            snappedItem = draggingItem
                            
                            //Get the active Item index
                            self.activeIndex = ArticleCarrousel.modelData.articles.count + Int(draggingItem)
                            if self.activeIndex > ArticleCarrousel.modelData.articles.count || Int(draggingItem) >= 0 {
                                self.activeIndex = Int(draggingItem)
                            }
                            print(self.activeIndex)
                        }
                    }
            )
            Spacer()
        }
    }
    
    func distance(_ item: Int) -> Double {
        return (draggingItem - Double(item)).remainder(dividingBy: Double(ArticleCarrousel.modelData.articles.count))
    }
    
    func myXOffset(_ item: Int) -> Double {
        let angle = Double.pi * 2 / Double(ArticleCarrousel.modelData.articles.count) * distance(item)
        return sin(angle) * 200
    }
}

struct ArticleCarrousel_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCarrousel()
    }
}
