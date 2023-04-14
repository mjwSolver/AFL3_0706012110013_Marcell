//
//  Landmark.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 14/04/23.
//

import Foundation
import SwiftUI

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
    
    // For storing coordinate informations
    private var coordinates: Coordinates

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
