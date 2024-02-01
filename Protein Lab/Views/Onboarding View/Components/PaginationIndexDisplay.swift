//
//  PaginationIndexDisplay.swift
//  Protein Lab
//
//  Created by Ben Clarke on 31/01/2024.
//

import SwiftUI

struct PaginationIndexDisplay: View {
    // MARK: - Properties
    @Binding var currentIndex: Int

    // MARK: - Body
    var body: some View {
        HStack {
            Group {
                Capsule()
                    .foregroundColor(currentIndex == 0 ? Color("black") : .gray)
                    .frame(width: currentIndex == 0 ? 30 : 10, height: 10)
                    .springAnimation(animate: currentIndex == 0 ? true : false)
                   
                Capsule()
                    .foregroundColor(currentIndex == 1 ? Color("black") : .gray)
                    .frame(width: currentIndex == 1 ? 30 : 10, height: 10)
                    .springAnimation(animate: currentIndex == 1 ? true : false)
                
                Capsule()
                    .foregroundColor(currentIndex == 2 ? Color("black") : .gray)
                    .frame(width: currentIndex == 2 ? 30 : 10, height: 10)
                    .springAnimation(animate: currentIndex == 2 ? true : false)
            }
            
            Spacer()
            
            if currentIndex != 2 {
                Button(action: {
                    //TODO: - Add action
                }, label: {
                    Text("Skip")
                        .underline()
                        .foregroundColor(.black)
                })
            }
        }
    }
}

#Preview {
    PaginationIndexDisplay(currentIndex: .constant(2))
}
