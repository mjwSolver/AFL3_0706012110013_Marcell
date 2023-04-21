//
//  Badge.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 21/04/23.
//

import SwiftUI

struct Badge: View {
    // Create the Badge Symbol
    var badgeSymbols: some View {
        // Create multiple instances of the symbol
        // At different Angles
        ForEach(0..<8) { index in
            RotatedBadgeSymbol(
                angle: .degrees(Double(index) / Double(8)) * 360.0
            )
        }
        .opacity(0.5)
    }
    
    // Use Z stack to sandwich each foreground and background.
    var body: some View {
        ZStack {
            BadgeBackground()
            
            // Reposition the Badge Symbol
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
