//
//  StarRatingScale.swift
//  Protein Lab
//
//  Created by Ben Clarke on 02/03/2024.
//

import SwiftUI

struct StarRatingScale: View {
    //MARK: - Properties
    let maxRating = 5
    @State var starRating: Double = 2.5
    
    //MARK: - Body
    var body: some View {
        HStack(spacing: 5) {
            ForEach(0..<Int(starRating), id: \.self) { _ in
                fullStar.foregroundStyle(Color.green)

            }
            
            if (starRating != floor(starRating)) {
                halfStar.foregroundStyle(Color.green)
            }
            
            ForEach(0..<Int(Double(maxRating) - starRating), id: \.self) { _ in
                emptyStar.foregroundStyle(Color.green)

            }
            
            let formattedStarRating = String(format: "%.1f", starRating)
            Text(starRating == 0 ? "0 / 5" : "\(formattedStarRating) / 5")
                .foregroundStyle(Color.green)
                .bold()
                .padding(10)
            
        }
    }
    
    private var fullStar: some View {
        Image(systemName: "star.fill")
    }
    
    private var halfStar: some View {
        Image(systemName: "star.leadinghalf.filled")
    }
    
    private var emptyStar: some View {
        Image(systemName: "star")
    }
}

#Preview {
    StarRatingScale()
}
