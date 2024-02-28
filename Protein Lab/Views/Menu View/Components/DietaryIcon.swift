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

    //MARK: - Body
    var body: some View {
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

#Preview {
    DietaryIcon(preference: .glutenFree)
}
