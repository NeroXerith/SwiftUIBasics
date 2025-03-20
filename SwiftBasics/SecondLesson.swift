//
//  SecondLesson.swift
//  SwiftBasics
//
//  Created by Biene Bryle Sanico on 3/20/25.
//

import SwiftUI

struct SecondLesson: View {
    var body: some View {
        Circle()
//            .fill(Color.blue)
//            .foregroundStyle(Color.pink)
//            .stroke()
//            .stroke(Color.red, lineWidth: 10)
            .stroke(Color.pink, style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [10]))
//            .trim(from: 0.3, to: 1.0)
//            .stroke(Color.purple, lineWidth: 10)
        
        
        Ellipse()
            .trim(from: 0.5, to: 1.0)
            .fill(Color.red)
            .frame(width: 200, height: 100, alignment: .center)
            .padding(20)

        
        Capsule(style: .circular)
            .fill(Color.yellow)
            .frame(width: 200, height: 100, alignment: .center)
        
        Rectangle()
            .fill(Color.green)
            .frame(width: 200, height: 100)
        
        RoundedRectangle(cornerRadius: 20)
            .foregroundStyle(Color.purple)
            .frame(width: 200, height: 100)
    }
}

#Preview {
    SecondLesson()
}
