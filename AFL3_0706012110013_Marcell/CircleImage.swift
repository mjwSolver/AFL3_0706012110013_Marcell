//
//  CircleImage.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI

// Delcarative Struct that will create the view
struct CircleImage: View {
    var body: some View {
        
        // Insert image, clip it
        // add a border
        
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 5, x:3)
    }
}

// Declarative Struct that initializes the view
// On to the device.
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
