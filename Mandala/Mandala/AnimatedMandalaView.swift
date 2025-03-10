//
//  AnimatedMandalaView.swift
//  Mandala
//
//  Created by vijayesha on 04.02.25.
//

import SwiftUI

struct AnimatedMandalaView: View {
    let segments = 1 // More segments for complexity
       @State private var rotation: Double = 0

       var body: some View {
           ZStack {
                   MandalaPattern(segments: segments, rotation: rotation)
                       .rotationEffect(.degrees(rotation))
                       .animation(.easeInOut(duration: 6).repeatForever(autoreverses: true), value: rotation)
                       .onAppear {
                           rotation = 360 // Trigger continuous rotation
                       }
           }.padding()
       }
}

#Preview {
    AnimatedMandalaView()
        .padding()
}
