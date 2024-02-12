//
//  CardDetailView.swift
//  Protein Lab
//
//  Created by Ben Clarke on 09/02/2024.
//

import SwiftUI

struct CardDetailView: View {
    //MARKL - Properties
    let image: String
    let title: String
    let subtitle: String
    let description: String
    
    var body: some View {
        ScrollView {
            GeometryReader { geometry in
                if geometry.frame(in: .global).minY <= 0 {
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(y: geometry.frame(in: .global).minY/9)
                } else {
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.frame(in: .global).minY + geometry.size.height)
                        .clipped()
                        .offset(y: -geometry.frame(in: .global).minY)
                }
            }
            .frame(height: 350) // Set your desired initial height for the image
            
            VStack(alignment: .leading, spacing: 5) {
                Text(title)
                    .font(.system(size: 26, weight: .semibold, design: .serif))
                
                Text(subtitle)
                    .bold()
                
                Text(description)
            }.padding()
        }
        //.edgesIgnoringSafeArea(.top)
        .navigationTitle(title)
    }
}

#Preview {
    NavigationView {
        CardDetailView(image: K.Images.CardImages.fighterDrinking, title: "Fighter Drinking", subtitle: "More information here", description: "Information here, Information here, Information here, Information here, Information here, Information here, Information here,Information here, Information here...")
            .navigationBarTitleDisplayMode(.inline)
    }
}
