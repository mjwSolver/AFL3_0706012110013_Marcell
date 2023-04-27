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
    @State private var filter = FilterCategory.all
    
    // Creating a filter category
    enum FilterCategory: String, CaseIterable, Identifiable {
        case all = "All"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"

        var id: FilterCategory { self }
    }

    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
            // Additional filtering logic
                && (filter == .all || filter.rawValue == landmark.category.rawValue)
        }
    }

    // Title changes if we're viewing favorites
    var title: String {
        let title = filter == .all ? "Landmarks" : filter.rawValue
        return showFavoritesOnly ? "Favorite \(title)" : title
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
        .navigationTitle(title)
        .frame(minWidth: 300)
        // Add a toolbar, inside it is a toggle for favorite.
        .toolbar {
            ToolbarItem {
                Menu {
                    // Adding a picker for selecting the category
                    Picker("Category", selection: $filter) {
                            ForEach(FilterCategory.allCases) { category in
                                Text(category.rawValue).tag(category)
                            }
                        }
                        .pickerStyle(.inline)


                    
                    Toggle(isOn: $showFavoritesOnly) {
                        Label("Favorites only", systemImage: "star.fill")
                    }
                } label: {
                    Label("Filter", systemImage: "slider.horizontal.3")
                }
            }
            
            Text("Select a Landmark")
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
