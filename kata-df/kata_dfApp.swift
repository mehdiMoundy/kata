//
//  kata_dfApp.swift
//  kata-df
//
//  Created by Mehdi on 02/03/2023.
//

import SwiftUI

@main
struct kata_dfApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
