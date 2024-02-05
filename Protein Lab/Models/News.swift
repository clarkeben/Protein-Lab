//
//  News.swift
//  Protein Lab
//
//  Created by Ben Clarke on 04/02/2024.
//

import Foundation

struct News: Identifiable {
    var id = UUID().uuidString
    let imageName: String
    let title: String
    let description: String
}

//TODO: - Move to Home VM
struct NewsArticles {
    static let data: [News] = [
        News(imageName: K.Images.CardImages.gymCoupleEating, title: "Eat at our store", description: "Discover the taste of health with our exclusive organic meals."),
        News(imageName: K.Images.CardImages.healthyFoods, title: "Experience delicious meals", description: "Savor our wide range of delicious, protein-packed meals perfect for any diet."),
        News(imageName: K.Images.CardImages.manWomanDrinking, title: "Try our detox drinks", description: "Refresh and rejuvenate with our natural detox drinks."),
        News(imageName: K.Images.CardImages.fighterDrinking, title: "We support weight loss", description: "Achieve your fitness goals with our weight loss supportive drinks and meals.")
    ]
}
