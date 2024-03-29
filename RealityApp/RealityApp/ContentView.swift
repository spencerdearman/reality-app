//
//  ContentView.swift
//  RealityApp
//
//  Created by Spencer Dearman on 1/16/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)
            
            IntroSequence()
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
