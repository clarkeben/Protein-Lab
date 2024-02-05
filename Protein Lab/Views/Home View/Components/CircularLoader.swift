//
//  CircularLoader.swift
//  Protein Lab
//
//  Created by Ben Clarke on 05/02/2024.
//

import SwiftUI

struct CircularLoader: View {
    //MARK: - Properties
    var progress: CGFloat = 0.7

    //MARK: - Body
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 15.0)
                .opacity(0.3)
                .foregroundColor(Color.gray)

            Circle()
                .trim(from: 0.0, to: progress)
                .stroke(style: StrokeStyle(lineWidth: 15.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.black)
                .rotationEffect(Angle(degrees: -90))
           
            Image(systemName: "star.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundColor(Color.yellow)
        }
        .padding(20)
        .frame(width: 150, height: 150)
    }
}

#Preview {
    CircularLoader()
}
