//
//  ContentView.swift
//  Protein Lab
//
//  Created by Ben Clarke on 19/01/2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @AppStorage(K.UserDefaultsKeys.showOnboarding) var showOnboardingView = true
    
    //MARK: - Body
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            MenuView()
                .tabItem {
                    Label("Menu", systemImage: "menucard")
                }
        }
    }
}

#Preview {
    ContentView()
}
