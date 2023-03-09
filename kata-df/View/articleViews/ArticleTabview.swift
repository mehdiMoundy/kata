//
//  ArticleTabview.swift
//  kata-df
//
//  Created by Mehdi on 09/03/2023.
//

import SwiftUI

struct ArticleTabview: View {
    static let modelData = ModelData()
    @State private var selectedTab = 1001
    
    var body: some View {
        
        NavigationStack {
            TabView(selection: $selectedTab) {
                
                ForEach(ArticleTabview.modelData.articles) { item in
                    NavigationLink {ArticleDetail(articles: item)
                    }
                    label :{
                        ArticleCard(articles: item)}
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }.foregroundColor(Color("ArticleText"))
            .accentColor(Color("NavigationLabelColor"))
            .navigationTitle("Slider d'articles")

    }
}

struct ArticleTabview_Previews: PreviewProvider {
    static var previews: some View {
        ArticleTabview()
    }
}
