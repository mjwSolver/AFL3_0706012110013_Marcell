//
//  LandmarkDetail.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI

// Update Landmark detail with new views that are open for extension (dynamic)
struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        // Create a new VStack to organize the view
        ScrollView {
            // Initialize the Mapview
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            // Insert the precreated Image
            // Change it's positioning
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack {
                VStack(alignment: .leading) {
                    
                    Text(landmark.name)
                        .font(.callout)
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                        Spacer()
                        Text(landmark.state)
                            .font(.subheadline)
                    }
                    
                    
                    // Insert a divider line
                    Divider()
                    
                    // Content under the divider line
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                    
                }.padding()
                
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

// Making LandmarkDetail open for extension
struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
