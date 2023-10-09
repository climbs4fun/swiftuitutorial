//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Brian Baker on 10/3/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
