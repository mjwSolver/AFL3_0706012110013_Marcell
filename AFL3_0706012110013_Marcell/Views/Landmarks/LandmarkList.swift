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
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }

    var body: some View {
        NavigationView {
            List {
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
        }
        .navigationTitle("Landmarks")
        .frame(minWidth: 300)
        // Add a toolbar, inside it is a toggle for favorite.
        .toolbar {
            ToolbarItem {
                Menu {
                    Toggle(isOn: $showFavoritesOnly) {
                        Label("Favorites only", systemImage: "star.fill")
                    }
                } label: {
                    Label("Filter", systemImage: "slider.horizontal.3")
                }
            }
        }
    }
}

// Previews our current LandmarkList Code.
// Previewing as iPhone SE
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
       LandmarkList()
            .environmentObject(ModelData())
    }
}
