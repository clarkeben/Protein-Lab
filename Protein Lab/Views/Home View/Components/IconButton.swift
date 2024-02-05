//
//  IconButton.swift
//  Protein Lab
//
//  Created by Ben Clarke on 05/02/2024.
//

import SwiftUI

struct IconButton: View {
    //MARK: - Properties
    var iconName: String
    var buttonTitle: String
    
    var buttonAction: () -> Void
    
    //MARK: - Body
    var body: some View {
        Button {
            buttonAction()
        } label: {
            VStack {
                Image(systemName: iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25, alignment: .center)
                
                Text(buttonTitle)
            }
            .tint(.black)
        }
    }
}

#Preview {
    IconButton(iconName: "takeoutbag.and.cup.and.straw", buttonTitle: "View Menu") {
        print("Button Pressed")
    }
}
