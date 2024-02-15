//
//  MenuCategories.swift
//  Protein Lab
//
//  Created by Ben Clarke on 15/02/2024.
//

import Foundation

struct MenuCategories: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let description: String
    
    var items: [MenuItem]
    
    
    static let dummyData: [MenuCategories] = [
        MenuCategories(
            name: "Protein Shakes",
            imageName: "detox-drink",
            description: "High-protein, nutritious shakes for muscle recovery and growth.",
            items: [
                MenuItem(imageName: "detox-drink", title: "Classic Chocolate"),
                MenuItem(imageName: "detox-drink", title: "Vanilla Sky"),
                MenuItem(imageName: "detox-drink", title: "Berry Blast")
            ]
        ),
        MenuCategories(
            name: "Smoothies",
            imageName: "detox-drink",
            description: "Fresh and fruity smoothies packed with vitamins and antioxidants.",
            items: [
                MenuItem(imageName: "detox-drink", title: "Tropical Mango"),
                MenuItem(imageName: "detox-drink", title: "Green Detox"),
                MenuItem(imageName: "detox-drink", title: "Blueberry Muffin")
            ]
        ),
        MenuCategories(
            name: "Coffee",
            imageName: "detox-drink",
            description: "Organic, sustainably sourced coffee in a variety of styles.",
            items: [
                MenuItem(imageName: "detox-drink", title: "Classic Americano"),
                MenuItem(imageName: "detox-drink", title: "Latte"),
                MenuItem(imageName: "detox-drink", title: "Cappuccino")
            ]
        ),
        MenuCategories(
            name: "Food",
            imageName: "detox-drink",
            description: "Healthy meals and snacks to fuel your day.",
            items: [
                MenuItem(imageName: "detox-drink", title: "Avocado Toast"),
                MenuItem(imageName: "detox-drink", title: "Quinoa Salad"),
                MenuItem(imageName: "detox-drink", title: "Vegan Wrap")
            ]
        ),
        MenuCategories(
            name: "Snacks",
            imageName: "detox-drink",
            description: "Nutritious snacks perfect for a quick energy boost.",
            items: [
                MenuItem(imageName: "detox-drink", title: "Energy Bars"),
                MenuItem(imageName: "detox-drink", title: "Fruit Cups"),
                MenuItem(imageName: "detox-drink", title: "Nuts & Seeds Mix")
            ]
        )
    ]
}
