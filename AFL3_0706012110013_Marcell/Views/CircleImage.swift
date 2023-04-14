//
//  CircleImage.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI

// Delcarative Struct that will create the view
struct CircleImage: View {
    var image: Image
    
    var body: some View {
        
        // Insert image, clip it
        image
            .clipShape(Circle())
        // add a border
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
        // add a dropshadow
            .shadow(radius: 5, x:3)
    }
}

// Declarative Struct that initializes the view
// On to the device.
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
