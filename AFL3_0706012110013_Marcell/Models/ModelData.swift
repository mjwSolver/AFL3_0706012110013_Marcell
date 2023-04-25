//
//  ModelData.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 14/04/23.
//

import Foundation
import Combine

// ModelData will be observable - any changes will send the updates to observers.
final class ModelData: ObservableObject {
    // Published means that it's open to change after initially loading it.
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    
    // hold on to profile data, even when the view changes.
    @Published var profile = Profile.default
    
    // is featured helps with filtering the ModelData
    var features: [Landmark] {
        landmarks.filter { $0.isFeatured }
    }
    
    // Categories structured as a dictionary
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: { $0.category.rawValue }
        )
    }
}


// Load Landmark Data from JSON file
var landmarks: [Landmark] = load("landmarkData.json")

// Define Load function and error handling logi when...
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    // Accessing a resource by URL
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    // Converting the data from the file
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    // Parsing the data in JSON.
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
