//
//  ShopLocation.swift
//  Protein Lab
//
//  Created by Ben Clarke on 13/03/2024.
//

import Foundation
import MapKit

struct ShopLocation: Identifiable {
    let id = UUID()
    var name: String
    let latitude: Double
    let longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
#if DEBUG
static let example = ShopLocation(name: "Koh Samui", latitude: 51.501, longitude: -0.141)
#endif
}
