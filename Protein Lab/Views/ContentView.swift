//
//  ContentView.swift
//  Protein Lab
//
//  Created by Ben Clarke on 19/01/2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @AppStorage(K.UserDefaultsKeys.showOnboarding) var showOnboarding = false
    
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
            WalletView()
                .tabItem {
                    Label("Wallet", systemImage: "wallet.pass.fill")
                }
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle")
                }
        }
        .tint(Color(K.Colours.black))
        .fullScreenCover(isPresented: $showOnboarding) {
            OnboardingView(showOnboardingView: $showOnboarding)
        }
    }
}

#Preview {
    ContentView()
}
