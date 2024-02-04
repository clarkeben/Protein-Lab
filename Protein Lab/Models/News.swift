//
//  News.swift
//  Protein Lab
//
//  Created by Ben Clarke on 04/02/2024.
//

import Foundation

struct News {
    let imageName: String
    let title: String
    let description: String
}

struct NewsArticles {
    var news: [News] = [News]()
    
    init() {
        news = loadDummyData()
    }
    
    private func loadDummyData() -> [News] {
        var news: [News] = [
            News(imageName: <#T##String#>, title: "Eat at our store", description: "Discover the taste of health with our exclusive organic meals."),
            News(imageName: <#T##String#>, title: "Experience delicious meals", description: "Savor our wide range of delicious, protein-packed meals perfect for any diet."),
            News(imageName: <#T##String#>, title: "Try our detox drinks", description: "Refresh and rejuvenate with our natural detox drinks."),
            News(imageName: <#T##String#>, title: "We support weightloss", description: "Achieve your fitness goals with our weight loss supportive drinks and meals.")
        ]
        
        return news
    }
}
