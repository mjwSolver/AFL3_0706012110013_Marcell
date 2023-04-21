//
//  RotatedBadgeSymbol.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 21/04/23.
//

import SwiftUI

// Create BadgeSymbol with rotation and padding adjustments
struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        // Padding is how much space it'll take up
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

// The degrees rotate clockwise when given a positive value
struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
