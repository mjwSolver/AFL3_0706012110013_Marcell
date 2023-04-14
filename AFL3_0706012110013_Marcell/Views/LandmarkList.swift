//
//  LandmarkList.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI

// Repeating the preview from LandmarkRow - in a list
// Making the list dynamid with a for-each loop
struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail()
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
        }
        .navigationTitle("Landmarks")
    }
}

// Previews our current LandmarkList Code.
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
