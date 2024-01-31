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
            Capsule()
                .foregroundColor(currentIndex == 0 ? .black : .gray)
                .frame(width: currentIndex == 0 ? 30 : 10, height: 10)
               
            Capsule()
                .foregroundColor(currentIndex == 1 ? .black : .gray)
                .frame(width: currentIndex == 1 ? 30 : 10, height: 10)
            
            Capsule()
                .foregroundColor(currentIndex == 2 ? .black : .gray)
                .frame(width: currentIndex == 2 ? 30 : 10, height: 10)
        }
    }
}

#Preview {
    PaginationIndexDisplay(currentIndex: .constant(2))
}
