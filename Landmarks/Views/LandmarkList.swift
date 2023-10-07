//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Brian Baker on 10/4/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks, id: \.id){ landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
