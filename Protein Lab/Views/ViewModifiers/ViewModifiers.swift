//
//  ViewModifiers.swift
//  Protein Lab
//
//  Created by Ben Clarke on 01/02/2024.
//

import SwiftUI

//MARK: - ViewModifiers
/// RoundedButton Style
struct RoundedButtonStyle: ViewModifier {
    let tintColour: Color
    
    func body(content: Content) -> some View {
        content
            .tint(tintColour)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
    }
}

/// Drop Shadow
struct GreyShadow: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}


// MARK: - Shape
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

//MARK: - View Extension
extension View {
    ///Rounded Button Style
    func roundedButton(tintColour: Color) -> some View {
        self.modifier(RoundedButtonStyle(tintColour: tintColour))
    }
    
    /// Slight Grey Shadow
    func greyShadow() -> some View {
        self.modifier(GreyShadow())
    }
    
    /// Corner Radius
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

