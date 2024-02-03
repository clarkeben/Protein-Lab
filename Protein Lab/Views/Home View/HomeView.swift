//
//  HomeView.swift
//  Protein Lab
//
//  Created by Ben Clarke on 22/01/2024.
//

import SwiftUI

struct HomeView: View {
    //MARK: - Properties
    @State private var showOnboarding = true
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 5) {
                    Text("Welcome Ben!")
                        .font(.system(size: 32, weight: .semibold, design: .serif))
                        .foregroundStyle(Color.gray)
                    Text("What would you like today?")
                    
                    VStack(alignment: .leading) {
                        
                        Image("Grey-Protien-Monster")
                                .resizable()
                                .scaledToFill()
                                .frame(width: K.ScreenDimensions.screenWidth - 20, height: 250)
                                .clipped()
                        
                        Spacer()
                        
                        Text("Enjoy 10% off with club")
                            .bold()
                            .padding(5)
                        Text("Sign-up to your subscription, you can get 3 beautifully crafted protein shakes.")
                            .padding(.horizontal, 5)
                            .padding(.bottom, 10)
                    }
                    .frame(width: K.ScreenDimensions.screenWidth-20, height: 350)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                    
                    HStack {
                        
                        Button {
                            
                        } label: {
                            VStack {
                               Image(systemName: "takeoutbag.and.cup.and.straw")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: .center)
                                Text("View Menu")
                            }
                            
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 2)
                                .padding(.horizontal, 10)
                            
                            VStack {
                               Image(systemName: "qrcode")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: .center)
                                Text("Show Code")
                            }
                            
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 2)
                                .padding(.horizontal, 10)
                            
                            VStack {
                               Image(systemName: "location")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: .center)
                                Text("Find Us")
                            }
                        }
                        .tint(.black)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        
                    }
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        //TODO: - Handle Button pressed
                    } label: {
                        Image(systemName: "person")
                            .tint(Color(K.Colours.black))
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
