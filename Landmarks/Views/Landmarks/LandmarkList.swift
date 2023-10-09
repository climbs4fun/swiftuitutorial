//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Brian Baker on 10/4/23.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    
    var body: some View {
        NavigationSplitView{
                List {
                    Toggle(isOn: $showFavoritesOnly, label: {
                        Text("Favorites Only")
                    })
                    ForEach(filteredLandmarks) {landmark in
                        NavigationLink{
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            LandmarkRow(landmark: landmark)
                        }
                    }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
