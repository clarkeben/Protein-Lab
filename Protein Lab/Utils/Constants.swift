//
//  Constants.swift
//  Protein Lab
//
//  Created by Ben Clarke on 21/01/2024.
//

import Foundation
import SwiftUI

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
        
        /// Card Images for HomeScreen
        enum CardImages {
            static let fighterTraining = "Fighter-Training"
            static let proteinDrinkMonsterGrey = "Grey-Protien-Monster"
            static let healthyDrinkMonsterGreen = "HealthyDrinkMonster"
            static let gymCoupleEating = "Gym-Couple-Eating"
            static let manWomanDrinking = "Man-Woman-Drinking-Protien"
            static let fighterDrinking = "Muay-Thai-Fighter-Protien-Shake"
            static let yakshaMuayThaiMonster = "Yaksha-Muay-Thai-Fighter"
            static let healthyFoods = "Healthy-Foods"
        }
    }
    
    /// Colours
    enum Colours {
        static let black = "black"
        static let white = "white"
        static let grey = "grey"
        static let lightGrey = "LightGrey"
    }
    
    /// Screen Size
    enum ScreenDimensions {
        static let screenWidth = UIScreen.main.bounds.width
        static let screenHeight = UIScreen.main.bounds.height
    }
}

