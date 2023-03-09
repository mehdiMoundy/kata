//
//  ArticleLine.swift
//  kata-df
//
//  Created by Mehdi on 02/03/2023.
//

import SwiftUI

struct ArticleLine: View {
    var articles : Articles
    
    var body: some View {
        
        if UIDevice.current.userInterfaceIdiom == .phone
        {
            VStack(alignment: .leading) {
                Text(articles.name)
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.leading, 15.0)
                HStack {
                    Image(articles.cover)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 50)
                        .clipped()
                    Text(articles.content)
                        .padding(.horizontal, 5.0)
                }  .frame(maxHeight: 50)
            }
        }
        else
        {
            HStack(alignment: .top) {
                Image(articles.cover)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 200)
                    .clipped()
                VStack(alignment: .leading) {
                    Text(articles.name)
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(.leading, 15.0)
                    Text(articles.content)
                        .padding(.horizontal, 5.0)
                    Spacer()
                    VStack(alignment: .trailing) {
                        HStack {
                            Spacer()
                            Text("Read more")
                            Image(systemName: "chevron.forward")
                                .padding(.trailing, 5.0)
                        }
                        .padding([.top, .trailing], 30.0)
                        
                    }
                    
                }  .frame(maxHeight: 250)
            }
        }
    }
}

struct ArticleLine_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        ArticleLine(articles: modelData.articles[5])
    }
}
