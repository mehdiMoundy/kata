//
//  SwiftUIView.swift
//  kata-df
//
//  Created by Mehdi on 09/03/2023.
//

import SwiftUI

struct ArticleCard: View {
    var articles : Articles
    @Environment(\.dismiss) private var dismiss

    var body: some View {
  
        
        VStack(alignment: .center) {

        
       
            ZStack {
                Image(articles.cover)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width *  0.95,
                           height: UIScreen.main.bounds.height * 0.70)
                    .cornerRadius(10.0)
                    .clipped()
                
                VStack {
                    Spacer()
                    ZStack {
                        Rectangle()
                                .fill(Color("backgroudArticleDetail"))
                           
                        VStack {
                            Text(articles.name)
                                .font(.title)
                                .fontWeight(.bold)
                                
                            Text(articles.content)
                                .padding(.all, 10.0)
                            HStack {
                                Text("Read More")
                                Image(systemName: "arrow.right.circle")
                            }
                         
                        }
                    } .frame(width: UIScreen.main.bounds.width * 0.95, height: UIScreen.main.bounds.height * 0.3)
                }
                }.frame(width: UIScreen.main.bounds.width *  0.95,
                        height: UIScreen.main.bounds.height * 0.70)
            Spacer()
        }
    }
}

struct ArticleCard_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        ArticleCard(articles: modelData.articles[7]).environmentObject(ModelData())
    }
}
