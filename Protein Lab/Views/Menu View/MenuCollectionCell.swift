//
//  MenuCollectionCell.swift
//  Protein Lab
//
//  Created by Ben Clarke on 15/02/2024.
//

import SwiftUI

struct MenuCollectionCell: View {
    let title: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 150)
                .clipped()
            Text(title)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2)
    }
}

#Preview {
    MenuCollectionCell(title: "Drinks", imageName: "detox-drink")
}
