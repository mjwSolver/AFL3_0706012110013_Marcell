//
//  Landmark.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 14/04/23.
//

import Foundation
import SwiftUI
import CoreLocation

// Defining the Landmark Struct
struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    // Inserting Code to store the Image
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    // Adding True Location Data
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    // For storing coordinate informations
    private var coordinates: Coordinates

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
