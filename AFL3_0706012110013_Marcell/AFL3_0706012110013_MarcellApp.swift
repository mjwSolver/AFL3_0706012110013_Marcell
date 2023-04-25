//
//  AFL3_0706012110013_MarcellApp.swift
//  AFL3_0706012110013_Marcell
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

@main
struct AFL3_0706012110013_MarcellApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        
    #if os(watchOS)
    WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
    #endif
        
    }
}
