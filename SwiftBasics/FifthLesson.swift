//
//  FifthLesson.swift
//  SwiftBasics
//
//  Created by Biene Bryle Sanico on 3/21/25.
//

import SwiftUI

struct FifthLesson: View {
    var body: some View {
        Image("jett")
            .resizable()
            // .border(Color.red, width: 5)
//            .aspectRatio(contentMode: .fill)
            .scaledToFill()
            .frame(width: 300, height: 200)
           // .clipped()
            .cornerRadius(30)
        
        // Manually make a circle image for example a Profile picture
        Image("jett")
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 150)
            .cornerRadius(150)
        // OR
        Image("jett")
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
        // Other Examples
        Image("jett")
            .resizable()
            .scaledToFill()
            .frame(width: 80, height: 80)
            .clipShape(Circle())
        
        // Image to Icon so you can customize it
        Image("google")
            .renderingMode(.template) // Because of template rendering
            .resizable()
            .scaledToFit()
            .frame(width: 80, height: 80)
            .foregroundColor(.red)
    }
}

#Preview {
    FifthLesson()
}
