//
//  ContentView.swift
//  kata-df
//
//  Created by Mehdi on 02/03/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var selection: Tab = .home
    @State private var showProfile = false
    
    enum Tab {
        case home
        case articleListing
        case articleCarousel
        case articleSlide
        case contacts
    }
    var body: some View {
        NavigationStack {
            TabView(selection: $selection) {
                homeView()
                    .tabItem {Label("Accueil", systemImage: "star")}
                    .tag(Tab.home)
                ArticleList()
                    .tabItem { Label("Articles", systemImage: "list.bullet")}
                    .tag(Tab.articleListing)
                ArticleCarrousel()
                    .tabItem { Label("Carousel", systemImage: "slider.horizontal.below.rectangle")}
                    .tag(Tab.articleCarousel)
                ArticleTabview()
                    .tabItem { Label("Slider", systemImage: "hand.draw")}
                    .tag(Tab.articleSlide)
                ContactView()
                    .tabItem {Label("Contacts", systemImage: "info.circle")}
                    .tag(Tab.contacts)
            }
            .toolbar {Button {showProfile.toggle()}
            label: {Label("User Profile", systemImage: "person.crop.circle")
                .foregroundColor(/*@START_MENU_TOKEN@*/Color("NavigationLabelColor")/*@END_MENU_TOKEN@*/)}
            }
            .sheet(isPresented: $showProfile) {ProfileHost().environmentObject(modelData)}
        }.accentColor(Color("NavigationLabelColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
