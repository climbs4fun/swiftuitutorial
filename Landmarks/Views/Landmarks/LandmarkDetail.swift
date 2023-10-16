//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Brian Baker on 10/7/23.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    @Environment var LoctionData: LocationDataManager
                 
    var landmark: Landmark
                 
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id})!
    }
    
    
    var body: some View {
        
        ScrollView {
            
            MapView(coordinate: landmark.locationCoordinate)
            .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.park)
                      
                    Spacer()
                    Text(landmark.state)
                       
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(locationData)
                //Text(landmark.description)
            }
            .padding()
        
        
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}

