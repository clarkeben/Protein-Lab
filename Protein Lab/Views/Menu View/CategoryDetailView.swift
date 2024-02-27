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
        VStack {
            
        }
        .navigationTitle(category.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    CategoryDetailView(category: MenuCategories.dummyData[0])
}
