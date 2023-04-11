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
            Text("The Rock is a Turtle")
                .font(.callout)
                .foregroundColor(Color.blue)
            Text("This is MarcellJW!")
                .font(.subheadline)
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
