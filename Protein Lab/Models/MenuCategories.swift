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
                MenuItem(imageName: K.Images.Drinks.protein, title: "Classic Chocolate", dietaryPreference: .glutenFree, description: "Rich and creamy chocolate shake packed with high-quality protein for muscle repair.", calories: 350),
                MenuItem(imageName: K.Images.Drinks.protein, title: "Vanilla Sky", dietaryPreference: .glutenFree, description: "Smooth vanilla shake with whey protein and a touch of sweetness, perfect for post-workout.", calories: 330),
                MenuItem(imageName: K.Images.Drinks.protein, title: "Berry Blast", dietaryPreference: .vegan, description: "Antioxidant-rich berries blended with plant-based protein for a refreshing recovery drink.", calories: 300)
            ]
        ),
        MenuCategories(
            type: .smoothies,
            name: Category.smoothies.name,
            imageName: K.Images.MenuItems.smoothie,
            description: "Fresh and fruity smoothies packed with vitamins and antioxidants.",
            items: [
                MenuItem(imageName: K.Images.MenuItems.smoothie, title: "Tropical Mango", dietaryPreference: .vegan, description: "A vibrant blend of mango, pineapple, and banana for a tropical taste sensation.", calories: 250),
                MenuItem(imageName: K.Images.MenuItems.smoothie, title: "Green Detox", dietaryPreference: .vegan, description: "Detoxifying greens like spinach and kale mixed with apple and lemon for a refreshing cleanse.", calories: 220),
                MenuItem(imageName: K.Images.MenuItems.smoothie, title: "Blueberry Muffin", dietaryPreference: .glutenFree, description: "Blueberries, bananas, and oats blended to taste just like a blueberry muffin, in drink form.", calories: 280),
            ]
        ),
        MenuCategories(
            type: .coffee,
            name: Category.coffee.name,
            imageName: K.Images.MenuItems.coffee,
            description: "Organic, sustainably sourced coffee in a variety of styles.",
            items: [
                MenuItem(imageName: "detox-drink", title: "Classic Americano", dietaryPreference: .vegan, description: "A bold and robust Americano, made from premium espresso beans.", calories: 15),
                MenuItem(imageName: "detox-drink", title: "Latte", dietaryPreference: .vegan, description: "Smooth and creamy latte with a rich espresso base, topped with steamed milk.", calories: 190),
                MenuItem(imageName: "detox-drink", title: "Cappuccino", dietaryPreference: .vegan, description: "A classic cappuccino with a double espresso shot and frothy milk foam.", calories: 130)
            ]
        ),
        MenuCategories(
            type: .food,
            name: Category.food.name,
            imageName: K.Images.MenuItems.food,
            description: "Healthy meals and snacks to fuel your day.",
            items: [
                MenuItem(imageName: "detox-drink", title: "Avocado Toast", dietaryPreference: .glutenFree, description: "Creamy avocado spread on gluten-free toast, topped with cherry tomatoes and sesame seeds.", calories: 320),
                MenuItem(imageName: "detox-drink", title: "Quinoa Salad", dietaryPreference: .vegan, description: "A light and refreshing salad with quinoa, mixed greens, and a variety of vegetables.", calories: 270),
                MenuItem(imageName: "detox-drink", title: "Vegan Wrap", dietaryPreference: .vegan, description: "A hearty wrap filled with hummus, veggies, and greens, perfect for a quick, nutritious meal.", calories: 400)
            ]
        ),
        MenuCategories(
            type: .snacks,
            name: K.Images.MenuItems.snacks,
            imageName: K.Images.MenuItems.snacks,
            description: "Nutritious snacks perfect for a quick energy boost.",
            items: [
                MenuItem(imageName: K.Images.MenuItems.snacks, title: "Energy Bars", dietaryPreference: .vegan, description: "Packed with oats, nuts, and seeds, these energy bars are a perfect on-the-go snack to keep you powered throughout the day.", calories: 250),
                MenuItem(imageName: K.Images.MenuItems.snacks, title: "Fruit Cups", dietaryPreference: .vegan, description: "A colorful mix of seasonal fruits, perfectly cut and ready to enjoy. A refreshing and hydrating snack option.", calories: 100),
                MenuItem(imageName: K.Images.MenuItems.snacks, title: "Nuts & Seeds Mix", dietaryPreference: .vegan, description: "A crunchy and satisfying blend of almonds, walnuts, pumpkin seeds, and sunflower seeds, lightly salted for flavor.", calories: 180)
            ]
        )
    ]
}
