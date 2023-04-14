//
//  LandmarkDetail.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        // Create a new VStack to organize the view
        VStack {
            // Initialize the Mapview
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            // Insert the precreated Image
            // Change it's positioning
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack {
                VStack(alignment: .leading) {
                    
                    Text("The Rock is a Turtle")
                        .font(.callout)
                    HStack {
                        Text("Joshua Tree National Park")
                            .font(.subheadline)
                        Spacer()
                        Text("California")
                            .font(.subheadline)
                    }
                    
                    
                    // Insert a divider line
                    Divider()
                    
                    // Content under the divider line
                    Text("About Turtle Rock")
                        .font(.title2)
                    Text("Well, it's a Rock")
                    
                }.padding()
                
            }
            .padding()
            
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
