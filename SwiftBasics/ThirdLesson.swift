//
//  SwiftUIView.swift
//  SwiftBasics
//
//  Created by Biene Bryle Sanico on 3/21/25.
//

import SwiftUI

struct SwiftUIView: View {
    // Alternative approach (RGB) since the color literal is not working
    let primaryColor = Color(red: 0.26, green: 0.76, blue: 0.97)
    let secondaryColor = Color(red: 0.18, green: 0.50, blue: 0.76)
    
    var body: some View {
        // Linear Gradient
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                LinearGradient(colors: [primaryColor, secondaryColor], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .frame(width: 300, height: 200)
        
       
        // Radial Gradient
        Circle()
            .fill(
                RadialGradient(gradient: Gradient(colors: [primaryColor, secondaryColor]), center: .center, startRadius: 50, endRadius: 200
            ))
            .frame(width: 300, height: 300)
        
        // Angular Gradient
        Rectangle()
            .fill(
                AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .topLeading, angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
            
    }
}

#Preview {
    SwiftUIView()
}
