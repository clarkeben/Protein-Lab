//
//  CategoryCellView.swift
//  Protein Lab
//
//  Created by Ben Clarke on 01/03/2024.
//

import SwiftUI

struct CategoryCellView: View {
    //MARK: - Properties
    let item: MenuItem
    
    //MARK: - Body
    var body: some View {
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
}

#Preview {
    CategoryCellView(item: MenuItem(imageName: K.Images.Drinks.detox, title: "Detox"))
}
