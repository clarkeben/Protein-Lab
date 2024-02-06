//
//  SmallCardView.swift
//  Protein Lab
//
//  Created by Ben Clarke on 06/02/2024.
//

import SwiftUI

struct SmallCardView: View {
    //MARK: - Properties
    let image: String = K.Images.CardImages.healthDrinkOnTable
    let title: String
    let subtitle: String
    
    var showImage: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            if showImage {
                Image(image)
                        .resizable()
                        .scaledToFill()
                        .opacity(0.6)
                        .frame(width: K.ScreenDimensions.screenWidth - 20, height: 250)
                        .clipped()
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text(title)
                        .bold()
                        .padding(5)
                    Text(subtitle)
                        .bold()
                        .padding(.horizontal, 5)
                        .padding(.bottom, 10)
                }.padding(.horizontal, 10)
            } else {
                HStack {
                    VStack(alignment: .leading) {
                        Text(title)
                            .bold()
                            .padding(5)
                        Text(subtitle)
                            .bold()
                            .padding(.horizontal, 5)
                            .padding(.bottom, 10)
                    }.padding(.horizontal, 10)
                    Spacer()
                }
            }
        }
        .frame(width: K.ScreenDimensions.screenWidth-20, height: 120)
        .background(Color("LightGrey"))
        .cornerRadius(10)
        .greyShadow()
    }
}

#Preview {
    SmallCardView(title: "Refer a friend", subtitle: "And get a free drink for free!")
}
