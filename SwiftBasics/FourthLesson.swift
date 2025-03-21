//
//  FourthLesson.swift
//  SwiftBasics
//
//  Created by Biene Bryle Sanico on 3/21/25.
//

import SwiftUI

struct FourthLesson: View {
    var body: some View {
        // Icons Lesson
        Image(systemName: "heart")
            .frame(width: 200, height: 200)
            .border(Color.red)
        
        Image(systemName: "circle.fill")
            .resizable()
            .aspectRatio(contentMode: ContentMode.fill)
            // .scaledToFit() similar to aspectRatio
            .frame(width: 100, height: 120)
//            .clipped()
        
        Image(systemName: "star.fill")
            .resizable()
            .foregroundColor(.blue)
            .frame(width: 150, height: 150)
        
        Image(systemName: "heart.fill")
//            .font(.title)
            .font(.system(size: 60)) // Way to resize
            .foregroundStyle(.red)
        
        Image(systemName: "person.fill.badge.plus")
            .resizable()
            .renderingMode(.original)
            .scaledToFit()
            .frame(width: 50, height: 50)
            .foregroundColor(Color.purple)
        
    }
}

#Preview {
    FourthLesson()
}
