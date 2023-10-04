//
//  CircleImage.swift
//  Landmarks
//
//  Created by Brian Baker on 10/3/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
    }
}

#Preview {
    CircleImage()
}
