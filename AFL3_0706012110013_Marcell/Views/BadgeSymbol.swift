//
//  BadgeSymbol.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 21/04/23.
//

import SwiftUI

struct BadgeSymbol: View {
    
    // Define the dominant color of the symbol.
    static let symbolColor = Color(red: 79.0 / 255, green: 79.0 / 255, blue: 191.0 / 255)
    
    // Create the Symbol
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                // Define parameters to easily and consistently adjust points.
                let width = min(geometry.size.width, geometry.size.height)
                let height = width * 0.75
                let spacing = width * 0.030
                let middle = width * 0.50
                let topWidth = width * 0.226
                let topHeight = height * 0.448
                
                // Define the top section
                path.addLines([
                    CGPoint(x: middle, y: spacing),
                    CGPoint(x: middle - topWidth, y: topHeight - spacing),
                    CGPoint(x: middle, y: topHeight / 2 + spacing),
                    CGPoint(x: middle + topWidth, y: topHeight - spacing),
                    CGPoint(x: middle, y: spacing)
                ])
                
                // Create the gap
                path.move(to: CGPoint(x: middle, y: topHeight / 2 + spacing * 3))
                // Create the lower section
                path.addLines([
                    CGPoint(x: middle - topWidth, y: topHeight + spacing),
                    CGPoint(x: spacing, y: height - spacing),
                    CGPoint(x: width - spacing, y: height - spacing),
                    CGPoint(x: middle + topWidth, y: topHeight + spacing),
                    CGPoint(x: middle, y: topHeight / 2 + spacing * 3)
                ])
            }
            // Set the color
            .fill(Self.symbolColor)
        }
    }
}

// Preview the construct
struct BadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        BadgeSymbol()
    }
}
