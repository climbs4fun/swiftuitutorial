//
//  ContentView.swift
//  Landmarks
//
//  Created by Brian Baker on 10/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
            .frame(height: 300)
            
            CircleImage()
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Mary is hot stuff")
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
