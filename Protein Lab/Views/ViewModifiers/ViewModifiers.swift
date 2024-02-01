//
//  ViewModifiers.swift
//  Protein Lab
//
//  Created by Ben Clarke on 01/02/2024.
//

import SwiftUI

//MARK: - ViewModifiers
struct RoundedButtonStyle: ViewModifier {
    let tintColour: Color
    
    func body(content: Content) -> some View {
        content
            .tint(tintColour)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
    }
}


//MARK: - View Extension
extension View {
    func roundedButton(tintColour: Color) -> some View {
        self.modifier(RoundedButtonStyle(tintColour: tintColour))
    }
}
