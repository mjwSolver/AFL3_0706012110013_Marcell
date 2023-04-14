//
//  MapView.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI
import MapKit

// Struct to define location coordinates
struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )

    // body to generate map view
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

// MapView is now open for extension and can receive parameters
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
