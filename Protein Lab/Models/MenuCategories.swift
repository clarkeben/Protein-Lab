//
//  MenuCategories.swift
//  Protein Lab
//
//  Created by Ben Clarke on 15/02/2024.
//

import Foundation

struct MenuCategories: Identifiable {
    enum Category: String {
        case proteinShakes = "Protein Shakes"
        case detoxDrinks = "Detox Drinks"
        case smoothies = "Smoothies"
        case coffee = "Coffee"
        case food = "Food"
        case snacks = "Snacks"
        case other = "Other"

        var name: String {
            switch self {
            case .proteinShakes: "Protein Shakes"
            case .detoxDrinks: "Detox Drinks"
            case .smoothies: "Smoothies"
            case .coffee: "Coffee"
            case .food: "Food"
            case .snacks: "Snacks"
            case .other: "Other"
            }
        }
    
    }
    
    let id = UUID()
    let type: Category
    let name: String
    let imageName: String
    let description: String
    
    var items: [MenuItem]
    
    
    static let dummyData: [MenuCategories] = [
        MenuCategories(
            type: .proteinShakes, 
            name: Category.proteinShakes.name,
            imageName: "detox-drink",
            description: "High-protein, nutritious shakes for muscle recovery and growth.",
            items: [
                MenuItem(imageName: "detox-drink", title: "Classic Chocolate"),
                MenuItem(imageName: "detox-drink", title: "Vanilla Sky"),
                MenuItem(imageName: "detox-drink", title: "Berry Blast")
            ]
        ),
        MenuCategories(
            type: .smoothies,
            name: Category.smoothies.name,
            imageName: "detox-drink",
            description: "Fresh and fruity smoothies packed with vitamins and antioxidants.",
            items: [
                MenuItem(imageName: "detox-drink", title: "Tropical Mango"),
                MenuItem(imageName: "detox-drink", title: "Green Detox"),
                MenuItem(imageName: "detox-drink", title: "Blueberry Muffin")
            ]
        ),
        MenuCategories(
            type: .coffee,
            name: Category.coffee.name,
            imageName: "detox-drink",
            description: "Organic, sustainably sourced coffee in a variety of styles.",
            items: [
                MenuItem(imageName: "detox-drink", title: "Classic Americano"),
                MenuItem(imageName: "detox-drink", title: "Latte"),
                MenuItem(imageName: "detox-drink", title: "Cappuccino")
            ]
        ),
        MenuCategories(
            type: .food,
            name: Category.food.name,
            imageName: "detox-drink",
            description: "Healthy meals and snacks to fuel your day.",
            items: [
                MenuItem(imageName: "detox-drink", title: "Avocado Toast"),
                MenuItem(imageName: "detox-drink", title: "Quinoa Salad"),
                MenuItem(imageName: "detox-drink", title: "Vegan Wrap")
            ]
        ),
        MenuCategories(
            type: .snacks,
            name: Category.snacks.name,
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
