//
//  SwiftUIView.swift
//  SwiftBasics
//
//  Created by Biene Bryle Sanico on 3/21/25.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        // Linear Gradient
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                LinearGradient(colors: [Color.red, Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .frame(width: 300, height: 200)
        
       
        // Radial Gradient
        Circle()
            .fill(
                RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 50, endRadius: 200
            ))
            .frame(width: 300, height: 300)
        
        // Angular Gradient
        Rectangle()
            .fill(
                AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, angle: .degrees(180))
            )
            .frame(width: 300, height: 200)
            
    }
}

#Preview {
    SwiftUIView()
}
