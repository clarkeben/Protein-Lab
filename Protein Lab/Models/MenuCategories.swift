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
            imageName: K.Images.Drinks.protein,
            description: "High-protein, nutritious shakes for muscle recovery and growth.",
            items: [
                MenuItem(imageName: "detox-drink", title: "Classic Chocolate", dietaryPreference: .glutenFree),
                MenuItem(imageName: "detox-drink", title: "Vanilla Sky", dietaryPreference: .glutenFree),
                MenuItem(imageName: "detox-drink", title: "Berry Blast", dietaryPreference: .vegan)
            ]
        ),
        MenuCategories(
            type: .smoothies,
            name: Category.smoothies.name,
            imageName: K.Images.MenuItems.smoothie,
            description: "Fresh and fruity smoothies packed with vitamins and antioxidants.",
            items: [
                MenuItem(imageName: "detox-drink", title: "Tropical Mango", dietaryPreference: .vegan),
                MenuItem(imageName: "detox-drink", title: "Green Detox", dietaryPreference: .vegan),
                MenuItem(imageName: "detox-drink", title: "Blueberry Muffin", dietaryPreference: .glutenFree)
            ]
        ),
        MenuCategories(
            type: .coffee,
            name: Category.coffee.name,
            imageName: K.Images.MenuItems.coffee,
            description: "Organic, sustainably sourced coffee in a variety of styles.",
            items: [
                MenuItem(imageName: "detox-drink", title: "Classic Americano", dietaryPreference: .vegan),
                MenuItem(imageName: "detox-drink", title: "Latte", dietaryPreference: .vegan),
                MenuItem(imageName: "detox-drink", title: "Cappuccino", dietaryPreference: .vegan)
            ]
        ),
        MenuCategories(
            type: .food,
            name: Category.food.name,
            imageName: K.Images.MenuItems.food,
            description: "Healthy meals and snacks to fuel your day.",
            items: [
                MenuItem(imageName: "detox-drink", title: "Avocado Toast", dietaryPreference: .glutenFree),
                MenuItem(imageName: "detox-drink", title: "Quinoa Salad", dietaryPreference: .vegan),
                MenuItem(imageName: "detox-drink", title: "Vegan Wrap", dietaryPreference: .vegan)
            ]
        ),
        MenuCategories(
            type: .snacks,
            name: K.Images.MenuItems.snacks,
            imageName: "detox-drink",
            description: "Nutritious snacks perfect for a quick energy boost.",
            items: [
                MenuItem(imageName: "detox-drink", title: "Energy Bars", dietaryPreference: .vegan),
                MenuItem(imageName: "detox-drink", title: "Fruit Cups", dietaryPreference: .vegan),
                MenuItem(imageName: "detox-drink", title: "Nuts & Seeds Mix", dietaryPreference: .vegan)
            ]
        )
    ]
}
