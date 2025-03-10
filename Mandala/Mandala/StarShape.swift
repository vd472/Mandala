//
//  AllStructs.swift
//  Mandala
//
//  Created by vijayesha on 04.02.25.
//

import SwiftUI

struct StarShape: Shape {
    var points: Int

        func path(in rect: CGRect) -> Path {
            let center = CGPoint(x: rect.midX, y: rect.midY)
            let radius = min(rect.width, rect.height) / 2
            var path = Path()

            let angle = Double.pi * 2 / Double(points * 2)

            for i in 0..<(points * 2) {
                let length = i.isMultiple(of: 2) ? radius : radius / 2
                let x = center.x + CGFloat(cos(Double(i) * angle)) * length
                let y = center.y + CGFloat(sin(Double(i) * angle)) * length

                if i == 0 {
                    path.move(to: CGPoint(x: x, y: y))
                } else {
                    path.addLine(to: CGPoint(x: x, y: y))
                }
            }
            path.closeSubpath()
            return path
        }
}
