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
                // revealing a cancel button
                if editMode?.wrappedValue == .active {
                   Button("Cancel", role: .cancel) {
                       draftProfile = modelData.profile
                       editMode?.animation().wrappedValue = .inactive
                   }
               }
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
                    .onAppear {
                        draftProfile = modelData.profile
                    }
                    .onDisappear {
                        modelData.profile = draftProfile
                    }
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
