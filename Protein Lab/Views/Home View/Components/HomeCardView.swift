//
//  HomeCardView.swift
//  Protein Lab
//
//  Created by Ben Clarke on 05/02/2024.
//

import SwiftUI

struct HomeCardView: View {
    //MARK: - Properties
    let image: String
    let title: String
    let description: String
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading) {
            
            Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: K.ScreenDimensions.screenWidth - 20, height: 250)
                    .clipped()
            
            Spacer()
            
            Text(title)
                .bold()
                .padding(5)
            Text(description)
                .padding(.horizontal, 5)
                .padding(.bottom, 10)
        }
        .frame(width: K.ScreenDimensions.screenWidth-20, height: 350)
        .background(Color("LightGrey"))
        .cornerRadius(10)
        .greyShadow()
    }
}

#Preview {
    HomeCardView(image: K.Images.CardImages.healthyDrinkMonsterGreen, title: "Enjoy 10% off with club", description: "Sign-up to your subscription, you can get 3 beautifully crafted protein shakes.")
}
