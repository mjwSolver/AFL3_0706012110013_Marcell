//
//  ProfileHost.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 25/04/23.
//

import SwiftUI

// The Profile Host will hold the state and final display
struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    // Profile data is now being taken from ModelData
    @EnvironmentObject var modelData: ModelData
    @State private var draftProfile = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                Text("Profile Editor")
            }
        }
        .padding()
    }
}

// Without adding the envinronment object, the child view will fail to load.
struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
