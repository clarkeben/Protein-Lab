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
    
    @State private var animateView: Bool = false
    
    //MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350, height: 350, alignment: .center)
                .fadeInImage(animate: animateView)
            
            Group {
                Text("\(highlightedWord) ")
                    .foregroundColor(.gray)
                    .font(.system(size: 32, weight: .semibold, design: .rounded)) +
                Text(titleText)
                    .font(.system(size: 32, weight: .semibold, design: .rounded))
                
                Text(subtitleText)
            }
            .padding(10)
                   
            if currentIndex == 2 {
                Button {
                    
                } label: {
                    Text("Sign up")
                        .foregroundStyle(Color(K.Colours.white))
                }
                .roundedButton(tintColour: Color(K.Colours.black))
                .padding(.bottom, 10)
                
                Button {
                    
                } label: {
                    Text("If you have an account already sign-in")
                        .underline()
                        .foregroundStyle(.gray)
                }


            } else {
                Button {
                    buttonPressed()
                } label: {
                    Text("Next")
                        .fontWeight(.bold)
                }
                .roundedButton(tintColour: Color(K.Colours.grey))
            }
            Spacer()
        }
        .onAppear {
            animateView = true
        }
    }
}

#Preview {
    OnboardingPageView(currentIndex: .constant(2), image: K.Images.Onboarding.gymCouple, highlightedWord: "Browse", titleText: "a selection of our drinks", subtitleText: "here are a range of delicious drinks, more words to spew on screen") { }
}
