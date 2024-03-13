//
//  MapView.swift
//  Protein Lab
//
//  Created by Ben Clarke on 06/03/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    //MARK: - Properties
    private let position = MapCameraPosition.region(
        MKCoordinateRegion(center: CLLocationCoordinate2D(
            latitude: 9.531741, longitude: 100.061770), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    )
    
    private let shops: [ShopLocation] = [
        ShopLocation(name: "Chaweng, Koh Samui", latitude: 9.531741, longitude: 100.061770)
    ]
    
    @State private var showShops = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Map {
                ForEach(shops) { shop in
                    Marker(shop.name, systemImage: "fork.knife", coordinate: shop.coordinate)
                        .tint(.grey)
                }
            }
            .frame(width: K.ScreenDimensions.screenWidth-20, height: K.ScreenDimensions.screenHeight*0.75, alignment: .center)
            .cornerRadius(20)
            
            Button("Show Shops") {
                showShops = true
            }
            .tint(.black)
            
            Spacer()
        }
        .navigationTitle("Shops")
        .sheet(isPresented: $showShops) {
            ShopLocationListView(storeLocations: shops)
                .presentationDetents([.fraction(0.2), .fraction(0.4), .fraction(0.6)])
                .presentationDragIndicator(.visible)
        }
    }
}

struct ShopLocationListView: View {
    
    var storeLocations: [Shop]
    
    private let appleMapsURL = "http://maps.apple.com/?q="
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text("Shop Locations")
                    .serifTitle()
                
                ForEach(storeLocations) { location in
                    Text(location.name)
                    
                    Text("Opens 7:00am - 10:00pm")
                        .fontWeight(.light)
                    
                    HStack(spacing: 10) {
                        if let url = URL(string: "\(appleMapsURL)\(location.coordinate.latitude),\(location.coordinate.longitude)") {
                            ShareLink(item: url) {
                                Label("Share", systemImage: "map.fill")
                                    .tint(.black)
                            }
                        }
                    }
                }
                Spacer()
            }
            .padding()
            
            Spacer()
        }

    }
}

#Preview {
    NavigationStack {
        MapView()
    }
}
