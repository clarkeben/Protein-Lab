//
//  OnboardingPageView.swift
//  Protein Lab
//
//  Created by Ben Clarke on 30/01/2024.
//

import SwiftUI

struct OnboardingPageView: View {
    //MARK: - Properties
    
    @Binding var currentIndex: Int
    
    let image: String
    let highlightedWord: String
    let titleText: String
    let subtitleText: String
    
    var buttonPressed: () -> Void
    
    //MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350, height: 350, alignment: .center)
            
            Group {
                Text("\(highlightedWord) ")
                    .foregroundColor(.gray)
                    .font(.system(size: 32, weight: .semibold, design: .rounded)) +
                Text(titleText)
                    .font(.system(size: 32, weight: .semibold, design: .rounded))
                
                Text(subtitleText)
            }
            .padding(10)
                        
            Button {
                buttonPressed()
            } label: {
                Text("Next")
                    .fontWeight(.bold)
            }
            .tint(.black)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            
            Spacer()
        }
    }
}

#Preview {
    OnboardingPageView(currentIndex: .constant(0), image: K.Images.Onboarding.gymCouple, highlightedWord: "Browse", titleText: "a selection of our drinks", subtitleText: "here are a range of delicious drinks, more words to spew on screen") { }
}
