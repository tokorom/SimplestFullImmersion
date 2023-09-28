//
//  ContentView.swift
//  SimplestFullImmersion
//
//  Created by Yuta Tokoro on 2023/09/28.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace

    var body: some View {
        Button {
            Task {
                await openImmersiveSpace(id: "ImmersiveSpace")
            }
        } label: {
            Text("Open Immersive Space")
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
