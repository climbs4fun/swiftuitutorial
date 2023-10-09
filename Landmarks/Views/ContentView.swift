//
//  ContentView.swift
//  Landmarks
//
//  Created by Brian Baker on 10/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
