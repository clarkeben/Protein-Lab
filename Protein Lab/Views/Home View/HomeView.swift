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
    @State private var newsArticles = NewsArticles.data
    
    //MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 5) {
                    Text("Welcome, Ben!")
                        .serifTitle()
                        .foregroundStyle(Color.gray)
                    Text("What would you like today?")
                    
                    HomeCardView(image: K.Images.CardImages.proteinDrinkMonsterGrey, title: "Enjoy 10% off all orders", description: "Sign-up to your subscription and get 3 beautifully crafted shakes everyday!")
                    
                    
                    HStack {
                        Spacer()
                        
                        NavigationLink {
                            MenuView()
                        } label: {
                            IconButton(iconName: "takeoutbag.and.cup.and.straw", buttonTitle: "view menu")
                        }.buttonStyle(.plain)
                        
                        Divider()
                            .frame(height: 40)
                            .padding(.horizontal, 20)
                        
                        NavigationLink {
                            
                        } label: {
                            IconButton(iconName: "qrcode", buttonTitle: "Show code")
                        }.buttonStyle(.plain)
                        
                        Divider()
                            .frame(height: 40)
                            .padding(.horizontal, 20)
                        
                        NavigationLink {
                            MapView()
                        } label: {
                            IconButton(iconName: "location", buttonTitle: "Find us")
                        }.buttonStyle(.plain)
                        
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("7 stars!")
                                .font(.system(size: 32, weight: .semibold, design: .serif))
                            Text("3 Stars away")
                                .foregroundStyle(Color.gray)
                            Text("Collect Stars per purchase")
                            
                            Button("Your rewards") {
                                
                            }
                            .roundedButton(tintColour: Color(K.Colours.black))
                        }
                        .padding()
                        
                        Spacer()
                        
                        CircularLoader(progress: 0.7)
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Invite your friends")
                            .font(.system(size: 26, weight: .semibold, design: .serif))
                        
                        SmallCardView(title: "Invite your friends", subtitle: "Invite your friends and get a free drink", showImage: true)
                        SmallCardView(title: "Buy one get one free", subtitle: "Offer valid through Jan - Mar 2024", showImage: false)
                    }
                    
                    HStack {
                        Text("The latest news")
                            .font(.system(size: 26, weight: .semibold, design: .serif))
                        Spacer()
                    }
                    .padding()
                    
                    ForEach(newsArticles) { news in
                        NavigationLink(destination: CardDetailView(image: news.imageName, title: news.title, subtitle: news.subtitle, description: news.description)) {
                            HomeCardView(image: news.imageName, title: news.title, description: news.subtitle)
                                .padding(.vertical, 10)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    
                    Text("What are you waiting for, join the club.")
                        .foregroundStyle(Color.gray)
                    
                    Button("Sign-up for 3 drinks per day!") {
                        //TODO: - Handle button tapped
                    }
                    .roundedButton(tintColour: Color(K.Colours.black))
                    .padding(.horizontal, 20)
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
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
