//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by MacBook Pro on 25/04/23.
//

import SwiftUI

// Adding the list in the ContentView
struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
