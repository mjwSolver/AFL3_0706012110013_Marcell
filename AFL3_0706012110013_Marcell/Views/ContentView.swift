//
//  ContentView.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    static let modelData = ModelData()
    
    var body: some View {
//        LandmarkDetail(landmark: modelData.landmarks[0])
        LandmarkDetail()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
