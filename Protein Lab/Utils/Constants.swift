//
//  Constants.swift
//  Protein Lab
//
//  Created by Ben Clarke on 21/01/2024.
//

import Foundation

//MARK: - Constants
enum K {
    
    // UserDefaults
    enum UserDefaultsKeys {
        static let showOnboarding = "ShowOnboarding"
    }
    
    enum Images {
        /// Onboarding images
        enum Onboarding {
            static let drinkMonster = "drink-monster"
            static let drinkMonsterGrey = "drink-monster-grey"
            static let gymCouple = "gym-couple"
            static let mtFighter = "muay-thai-fighter-training"
        }
        
        /// Drinks Images 
        enum Drinks {
            static let detox = "detox-drink"
            static let electrolyte = "electrolyte-drink"
            static let hangoverCure = "hangover-drink"
            static let healthy = "healthy-drink"
            static let createYourOwn = "make-your-own-drink"
            static let protein = "protein-drink"
        }
    }
    
}

