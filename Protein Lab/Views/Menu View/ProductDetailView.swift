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
    
    @State private var animateView = false
    
    //MARK: - Body
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ZStack {
                    Rectangle()
                        .foregroundColor(.gray)
                        .opacity(0.2)
                        .frame(height: 300, alignment: .center)
                        .cornerRadius(20)
                    
                    Image(menuItem.imageName)
                        .resizable()
                        .frame(width: 300, height: 300, alignment: .center)
                        .shadow(color: .gray, radius: 1)
                        .fadeInView(animate: animateView)
                    
                    VStack {
                        Spacer()
                        HStack {
                            DietaryIcon(preference: .glutenFree, useCapsule: true)
                            Spacer()
                        }
                        .padding(10)
                    }
                }
                
                VStack(alignment: .leading) {
                    Text(menuItem.title)
                        .serifTitle()
                    
                    Text("\(menuItem.calories) Kcal")
                        .fontWeight(.light)
                    
                    StarRatingScale(starRating: 4.5)
                    
                    Text(menuItem.description)
                }
                .opacity(animateView ? 1 : 0)
                .animation(.linear(duration: 0.8), value: animateView)
            }
            .padding()
            .navigationTitle("Product")
            .onAppear() {
                animateView = true
            }
        }
    }
}

#Preview {
    ProductDetailView(menuItem: MenuItem(imageName: K.Images.Drinks.detox, title: "Detox drink", description: "A beautifully crafted detoxing drink", calories: 120))
}
