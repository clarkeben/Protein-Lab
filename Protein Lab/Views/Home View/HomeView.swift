//
//  HomeView.swift
//  Protein Lab
//
//  Created by Ben Clarke on 22/01/2024.
//

import SwiftUI

struct HomeView: View {
    //MARK: - Properties
    @State private var showOnboarding = true
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Home")
            .toolbar {
                //TODO: - Add title
                /*ToolbarItem(placement: .principal) {
                    Image("logo")
                        .resizable()
                        .frame(width: 150, height: 80, alignment: .center)
                }*/
            }
        }
    }
}

#Preview {
    HomeView()
}
