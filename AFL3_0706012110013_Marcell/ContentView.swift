//
//  ContentView.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, SwiftUI!")
            Text("This is MarcellJW!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
