//
//  ProductDetailView.swift
//  Protein Lab
//
//  Created by Ben Clarke on 27/02/2024.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - Properties
    let menuItem: MenuItem
    
    //MARK: - Body
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ZStack {
                    Rectangle()
                        .foregroundColor(.gray)
                        .opacity(0.2)
                        .frame(height: 300, alignment: .center)
                    
                    Image(menuItem.imageName)
                        .resizable()
                        .frame(width: 300, height: 300, alignment: .center)
                        .shadow(color: .gray, radius: 1)
                    
                    VStack {
                        Spacer()
                        HStack {
                            DietaryIcon(preference: .glutenFree, useCapsule: true)
                            Spacer()
                        }
                        .padding(10)
                    }
                }
                
                
                Text(menuItem.title)
                
                StarRatingScale(starRating: 4.5)
                
                Text(menuItem.description)
                
                
            }
            .padding()
            .navigationTitle("Product")
        }
    }
}

#Preview {
    ProductDetailView(menuItem: MenuItem(imageName: K.Images.Drinks.detox, title: "Detox drink", description: "A beautifully crafted detoxing drink", calories: 120))
}
