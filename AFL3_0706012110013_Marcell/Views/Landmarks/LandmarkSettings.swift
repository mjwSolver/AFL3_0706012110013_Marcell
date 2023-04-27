//
//  LandmarkSettings.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 27/04/23.
//

import SwiftUI

struct LandmarkSettings: View {
    // We want this info to last even outside of when the app is running
    @AppStorage("MapView.zoom")
    private var zoom: MapView.Zoom = .medium
    
    var body: some View {
        // Creates a picker to configure zoom data
        Form {
            Picker("Map Zoom:", selection: $zoom) {
                ForEach(MapView.Zoom.allCases) { level in
                    Text(level.rawValue)
                }
            }
            .pickerStyle(.inline)
        }
        .frame(width: 300)
        .navigationTitle("Landmark Settings")
        .padding(80)
    }
}

struct LandmarkSettings_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkSettings()
    }
}
