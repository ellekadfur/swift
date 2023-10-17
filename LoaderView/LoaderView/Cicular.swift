//
//  Cicular.swift
//  LoaderView
//
//  Created by Elle Jay Kadfur on 10/16/23.
//

import SwiftUI

struct Circular: View {
    let lineWidth: CGFloat
    let backgroundColor: Color
    let foregroundColor: Color
    let percentage: Double
    
    
    var body: some View {
        GeometryReader { g in
        ZStack {
            CircularShape().stroke(style: StrokeStyle(lineWidth: lineWidth)).fill(backgroundColor)
            
            CircularShape(percent: percentage).stroke(style: StrokeStyle(lineWidth: lineWidth)).fill(foregroundColor)
        }
        }.animation(.easeIn(duration: 1), value: percentage) .padding()

    }
}

#Preview {
    Circular(lineWidth: 10, backgroundColor: .red, foregroundColor: .green, percentage: 50)
}
