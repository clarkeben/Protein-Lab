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
            HStack {
                VStack(alignment: .leading) {
                    Text(item.title).bold()
                    
                    HStack {
                        if let dietaryReq = item.dietaryPreference {
                            DietaryIcon(preference: .vegan)
                        }
                        
                        Text("\(item.calories) Kcal")
                        
                        Spacer()
                    }
                }
                
                Image(item.imageName)
                    .resizable()
                    .frame(width: 80, height: 80, alignment: .center)
            }
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
