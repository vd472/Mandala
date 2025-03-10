//
//  MandalaPattern.swift
//  Mandala
//
//  Created by vijayesha on 05.02.25.
//

import SwiftUI

struct MandalaPattern: View {
    let segments: Int
    let rotation: Double
    
    var body: some View {
        ForEach(0..<segments, id: \.self) { i in
            let angle = Double(i) * (0 / Double(segments))
            MandalaSegment()
                .rotationEffect(.degrees(angle))
        }
        
    }
}


#Preview {
    MandalaPattern(segments: 1, rotation: .infinity)
}
