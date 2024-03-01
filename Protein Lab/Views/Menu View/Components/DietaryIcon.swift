//
//  AllergyIcon.swift
//  Protein Lab
//
//  Created by Ben Clarke on 28/02/2024.
//

import SwiftUI

struct DietaryIcon: View {
    //MARK: - Properties
    var preference: MenuItem.DietaryPreference
    var useCapsule: Bool = false
    
    //MARK: - Body
    var body: some View {
        if useCapsule {
            ZStack {
                Capsule()
                    .stroke(Color.green, lineWidth: 2)
                    .frame(width: 100, height: 30, alignment: .center)
                
                switch preference {
                case .vegan: Text(MenuItem.DietaryPreference.vegan.title).foregroundStyle(.green)
                case .glutenFree: Text(MenuItem.DietaryPreference.glutenFree.title).foregroundStyle(.green)
                }
            }
        } else {
            ZStack {
                Circle()
                    .stroke(Color.green, lineWidth: 2)
                    .frame(width: 30, height: 30)
                    
                switch preference {
                case .vegan: Text(MenuItem.DietaryPreference.vegan.rawValue).foregroundStyle(.green)
                case .glutenFree: Text(MenuItem.DietaryPreference.glutenFree.rawValue).foregroundStyle(.green)
                }
            }
        }
    }
}

#Preview {
    DietaryIcon(preference: .vegan)
}
