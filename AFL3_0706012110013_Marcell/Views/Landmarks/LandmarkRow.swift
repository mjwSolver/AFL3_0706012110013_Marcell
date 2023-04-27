//
//  LandmarkRow.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI

// Create the Landmark Row, the item template in the list
struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
            // It now has the Landmarks Park
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .bold()
            #if !os(watchOS)
            Text(landmark.park)
                .font(.caption)
                .foregroundColor(.secondary)
            #endif
            }


            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }

        }
        // Updates on watchOS as well - consider that too
        .padding(.vertical, 4)
    }
}

// Preview the Landmark Row from Editor > Canvas
// Configure preview to show a list of contents.
struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
    
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
