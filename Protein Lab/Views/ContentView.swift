//
//  ContentView.swift
//  Protein Lab
//
//  Created by Ben Clarke on 19/01/2024.
//

import SwiftUI

struct ContentView: View {
    //MAKR: - Properties
    @AppStorage(K.UserDefaultsKeys.showOnboarding) var showOnboardingView = true
    
    //MARK: - Body
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
