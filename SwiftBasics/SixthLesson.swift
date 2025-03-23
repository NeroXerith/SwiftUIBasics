//
//  SixthLesson.swift
//  SwiftBasics
//
//  Created by Biene Bryle Sanico on 3/23/25.
//

import SwiftUI

struct SixthLesson: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(Color.green)
////            .frame(width: 200, height: 200, alignment: .center)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
//            .background(Color.red)
    
        
        /* The concept here is that every single element wether its a shape, text, image, etc. no matter what it is has a frame that can be manipulated. This is how can we stack and build frames on top of another  */
        Text("Hello word")
            .background(Color.orange)
        
            .frame(height: 100, alignment: .center)
            .background(Color.red)
        
            .frame(width: 150)
            .background(Color.blue)
        
            .frame(maxWidth: .infinity , alignment: .leading)
            .background(Color.green)
        
            .frame(maxWidth: 300, maxHeight: 200)
            .background(Color.purple)
        
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
    
    }
}

#Preview {
    SixthLesson()
}
