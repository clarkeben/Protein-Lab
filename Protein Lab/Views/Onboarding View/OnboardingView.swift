//
//  Onboardingview.swift
//  Protein Lab
//
//  Created by Ben Clarke on 21/01/2024.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - Properties
    @Binding var showOnboardingView: Bool
    @State var currentTabIndex: Int = 0

    //MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            TabView(selection: $currentTabIndex) {
                OnboardingPageView(currentIndex: $currentTabIndex,
                                   image: K.Images.Onboarding.drinkMonsterGrey,
                                   highlightedWord: "Discover",
                                   titleText: "our healthy and refreshing drinks",
                                   subtitleText: "Explore our variety of organic, rejuvenating beverages designed for your wellness.",
                                   buttonPressed: incrementTabIndex).tag(0)
                
                OnboardingPageView(currentIndex: $currentTabIndex,
                                   image: K.Images.Onboarding.gymCouple,
                                   highlightedWord: "Sip",
                                   titleText: "the goodness",
                                   subtitleText: "Discover drinks that nourish your body and delight your taste buds, all in one sip.", 
                                   buttonPressed: incrementTabIndex).tag(1)
                
                OnboardingPageView(currentIndex: $currentTabIndex,
                                   image: K.Images.Onboarding.mtFighter,
                                   highlightedWord: "Health",
                                   titleText: "in Every Drop",
                                   subtitleText: "Dive into our selection of nutrient-rich drinks, tailored for your healthy lifestyle.",
                                   buttonPressed: incrementTabIndex).tag(2)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
            
            HStack {
                PaginationIndexDisplay(currentIndex: $currentTabIndex)
                Spacer()
            }.padding()
        }
    }
    
    //MARK: - Methods
    private func incrementTabIndex() {
        guard currentTabIndex < 2 else { return }
        
        withAnimation {
            currentTabIndex += 1
        }
    }
}

#Preview {
    OnboardingView(showOnboardingView: .constant(true))
}
