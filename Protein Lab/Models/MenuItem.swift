//
//  MenuItems.swift
//  Protein Lab
//
//  Created by Ben Clarke on 15/02/2024.
//

import Foundation

struct MenuItem: Identifiable, Hashable {
    enum DietaryPreference: String {
        case vegan = "V"
        case glutenFree = "GF"
        
        var title: String {
            switch self {
            case .vegan: return "Vegan"
            case .glutenFree: return "Gluten Free"
            }
        }
    }
    
    var id = UUID()
    var imageName: String
    var title: String
    var dietaryPreference: DietaryPreference?
    var description: String = ""
    var calories: Int = 0
}
