//
//  ProfileHost.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 25/04/23.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default

    var body: some View {
        Text("Profile for: \(draftProfile.username)")
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
