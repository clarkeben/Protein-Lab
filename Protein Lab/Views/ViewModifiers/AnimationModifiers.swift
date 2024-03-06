//
//  Animations.swift
//  Protein Lab
//
//  Created by Ben Clarke on 01/02/2024.
//

import SwiftUI

// MARK: - Animation ViewModifiers
struct SpringLoadAnimation: ViewModifier {
    var animate: Bool
    
    func body(content: Content) -> some View {
        content
            .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1), value: animate)
    }
}


struct FadeInView: ViewModifier {
    var animate: Bool
    
    func body(content: Content) -> some View {
        content
            .offset(y: animate ? 0 : -100)
            .opacity(animate ? 1.0: 0.0)
            .animation(.easeInOut(duration: 0.8), value: animate)
    }
}

// MARK: - View Extension
extension View {
    /// Spring Animation
    func springAnimation(animate: Bool = false) -> some View {
        self.modifier(SpringLoadAnimation(animate: animate))
    }
    
    /// Fade in image
    func fadeInView(animate: Bool = false) -> some View {
        self.modifier(FadeInView(animate: animate))
    }
}
