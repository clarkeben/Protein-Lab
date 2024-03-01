//
//  ProductDetailView.swift
//  Protein Lab
//
//  Created by Ben Clarke on 27/02/2024.
//

import SwiftUI

struct CategoryDetailView: View {
    //MARK: - Properties
    let category: MenuCategories
    
    //MARK: - Body
    var body: some View {
        List(category.items) { item in
            NavigationLink(destination: ProductDetailView()) {
                CategoryCellView(item: item)
            }.buttonStyle(.plain)
        }
        .navigationTitle(category.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        CategoryDetailView(category: MenuCategories.dummyData[0])
    }
}
