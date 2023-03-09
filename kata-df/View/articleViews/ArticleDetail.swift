//
//  ArticleLine.swift
//  kata-df
//
//  Created by Mehdi on 02/03/2023.
//

import SwiftUI

struct ArticleDetail: View {
    var articles : Articles
    @Environment(\.dismiss) private var dismiss

    var body: some View {
  
        
        VStack(alignment: .leading) {
            Rectangle()
                .frame(width: UIScreen.main.bounds.width * 0.1, height: 4.0)
                .foregroundColor(Color.green)
            Text(articles.name)
                .font(.headline)
                .fontWeight(.bold)
                .padding(.leading, 15.0)
            ScrollView (.vertical, showsIndicators: false){
            Image(articles.cover)
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width *  0.9)
                .clipped()
            ZStack {
                    Rectangle()
                        .fill(Color("backgroudArticleDetail"))
                        .frame(width: UIScreen.main.bounds.width * 0.8)
                    Text(articles.content)
                        .padding(.all, 30.0)
                    .frame(width: UIScreen.main.bounds.width * 0.75)
                }.offset(y: -150)
            }
        }
    }
}

struct ArticleDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        ArticleDetail(articles: modelData.articles[7]).environmentObject(ModelData())
    }
}



