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
            MapView()
                .frame(height: 300)
            
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
                }.padding()
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
