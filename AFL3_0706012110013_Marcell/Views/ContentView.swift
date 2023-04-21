//
//  ContentView.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    // State for holding the the users choise
    @State private var selection: Tab = .featured
    
    // Showing the users choice 
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        LandmarkList()
//        LandmarkDetail()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
