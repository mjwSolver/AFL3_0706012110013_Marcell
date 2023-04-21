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
            RotatedBadgeSymbol(angle: Angle(degrees: 0))
                .opacity(0.5)
        }
    
    // Use Z stack to sandwich each foreground and background.
    var body: some View {
        ZStack {
            BadgeBackground()
            
            badgeSymbols
        }
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
