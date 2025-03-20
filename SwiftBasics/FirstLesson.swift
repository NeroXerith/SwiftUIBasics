//
//  ContentView.swift
//  SwiftBasics
//
//  Created by Biene Bryle Sanico on 3/20/25.
//

import SwiftUI

struct FirstLesson: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("capitalized text" .capitalized)
            Text("Hello, world!")
                .fontWeight(.bold)
                .font(.title2)
            Text("This is me Biene Bryle Sanico")
                .font(.caption)
                .underline()
                .italic()
            Text("Strikethrough")
                .font(.body)
                .strikethrough()
                .italic()
            Text("Strikethrough with color")
                .font(.body)
                .underline(true, color: Color.red)
                .strikethrough(true, color: Color.green)
            
            // Explicit design
            Text("Large Text")
                .font(.system(size: 55, weight: .bold, design: .serif))
                .foregroundColor(Color.blue)
            
            // multine line text
            Text("This is a test for multiline textm. Lorem ipsum madami dolor sit amet consectetur adipisicing elit. Quo, molestias!")
                .multilineTextAlignment(.center)
                .font(.caption)
            
            Text("Hello iOS Developers! this is the swiftful thinking Bootcamp. I am really handsome yehey!")
                .multilineTextAlignment(.trailing) // Trailing is to right
            
                .padding()
            
            Text("This is the leading multine line text. hope you visual the difference")
                .multilineTextAlignment(.leading)
            
            Text("Baseline Offset this is the example")
                .baselineOffset(-50.0)
            
            Text("Hello world Kerning")
                .kerning(10)
            
            // Specificy the dimension by using frame
            Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo, molestias!")
                .multilineTextAlignment(.center)
                .font(.headline)
                .frame(width: 200, height: 100)
            
            Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo, molestias!")
                .frame(width: 100, height: 100, alignment: .center)
                .minimumScaleFactor(0.1)
            
            // Multine line leading with frame
            Text("Hello world leading The world is healing yehey what da fuck")
                .multilineTextAlignment(.leading)
                .frame(width: 200, height: 100, alignment: .leading)
                
        }
        .padding()
    }
}

#Preview {
    FirstLesson()
}
