//
//  Uber_SwiftUI_AppApp.swift
//  Uber SwiftUI App
//
//  Created by Agni Muhammad on 28/02/23.
//

import SwiftUI

@main
struct Uber_SwiftUI_AppApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
