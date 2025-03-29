//
//  EightLesson.swift
//  SwiftBasics
//
//  Created by Biene Bryle Sanico on 3/29/25.
//

import SwiftUI

struct EightLesson: View {
    
    // HStacks -> Horizontal
    // VStacks -> Vertical
    // ZStacks -> zIndex (back to front)
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
        }
        
        HStack {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    EightLesson()
}
