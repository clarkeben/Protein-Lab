//
//  MenuView.swift
//  Protein Lab
//
//  Created by Ben Clarke on 22/01/2024.
//

import SwiftUI

struct MenuView: View {
    //MARK: - Properties
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    let dummyData = MenuCategories.dummyData
    
    //MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(dummyData) { category in
                        NavigationLink(destination: CategoryDetailView(category: category)) {
                            MenuCollectionCell(title: category.name, imageName: category.imageName)
                                .padding(.horizontal, 20)
                                .frame(width: 250, height: 250, alignment: .center)
                        }.buttonStyle(.plain)
                    }
                }
            }
            .navigationTitle("Menu")
        }
    }
}

#Preview {
    NavigationView {
        MenuView()
    }
}
