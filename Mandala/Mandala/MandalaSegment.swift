//
//  MandalaSegment.swift
//  Mandala
//
//  Created by vijayesha on 04.02.25.
//

import SwiftUI

struct MandalaSegment: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(AngularGradient(gradient: Gradient(colors: [.red, .yellow, .blue, .purple]), center: .center), lineWidth: 10)
                .frame(width: 150, height: 150)
            
            Circle()
                .stroke(AngularGradient(gradient: Gradient(colors: [.red, .yellow, .blue, .purple]), center: .center), lineWidth: 10)
                .frame(width: 200, height: 200)
            
            Circle()
                .stroke(AngularGradient(gradient: Gradient(colors: [.red, .yellow, .blue, .purple]), center: .center), lineWidth: 10)
                .frame(width: 100, height: 130)
            
            ForEach(0..<1, id: \.self) { i in
                StarShape(points: 6)
                    .fill(LinearGradient(gradient: Gradient(colors: [.green, .cyan]), startPoint: .top, endPoint: .bottom))
                    .frame(width: CGFloat(40 + 2 * 20), height: CGFloat(40 + 2 * 20))
                    .rotationEffect(.degrees(Double(i * 45)))
            }
        }
    }
}

#Preview {
    MandalaSegment()
}
