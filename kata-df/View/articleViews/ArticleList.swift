//
//  ArticleList.swift
//  kata-df
//
//  Created by Mehdi on 02/03/2023.
//

import SwiftUI

struct ArticleList: View {
    static let modelData = ModelData()
    var body: some View {
        NavigationView{
            List (ArticleList.modelData.articles) {  article in
                NavigationLink {ArticleDetail(articles: article)
                }
                label :{
                ArticleLine(articles: article)}
            }
            .navigationTitle("Articles")
            .scrollIndicators(.hidden)
            .scrollContentBackground(.hidden)
        } 
        .navigationViewStyle(.stack)
    }
}

struct ArticleList_Previews: PreviewProvider {
    static var previews: some View {
        ArticleList()
    }
}
