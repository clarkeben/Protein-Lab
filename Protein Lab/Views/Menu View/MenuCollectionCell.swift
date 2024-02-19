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
        ZStack {
            VStack(spacing: 0) {
                LinearGradient(gradient: Gradient(colors: [Color.white, Color.gray.opacity(0.3)]), startPoint: .top, endPoint: .bottom)
                    .frame(height: 200)
                    .cornerRadius(20, corners: [.topLeft, .topRight])
                
                Color.white
                    .frame(height: 50)
            }
            
            VStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                    .shadow(radius: 1)
                    .cornerRadius(20, corners: [.topLeft, .topRight])
                
                Text(title)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color.white)
            }
        }
        .cornerRadius(20)
        .shadow(radius: 5)
        .padding()
    }
}

#Preview {
    MenuCollectionCell(title: "Drinks", imageName: "detox-drink")
}
