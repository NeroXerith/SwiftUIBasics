    //
    //  SeventhLesson.swift
    //  SwiftBasics
    //
    //  Created by Biene Bryle Sanico on 3/24/25.
    //

    import SwiftUI

    struct SeventhLesson: View {
        var body: some View {
            // Alternative approach (RGB) since the color literal is not working
            let primaryColor = Color(red: 0.26, green: 0.76, blue: 0.97)
            let secondaryColor = Color(red: 0.18, green: 0.50, blue: 0.76)
            
            let heartPrimaryColor = Color(red: 0.97, green: 0.26, blue: 0.26)
            /*
             There are 3 approach to add spacing in an element
             1. .padding()
             2. Spacer()
             3. GeometryReader
             */
            
            // Stacking Views/frames/Backgrounds and Overlays
            VStack() {
                
                // MARK: - CIRCLE EXAMPLE #1
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 14, weight: .medium, design: .serif))
                    .italic()
                // Inner part
                    .background(
                        Circle()
                            .fill(
                                LinearGradient(colors: [primaryColor, secondaryColor], startPoint: .topLeading, endPoint: .bottomTrailing)
                            )
                            .frame(width: 120, height: 120, alignment: .center)
                    )
                // Outer part
                    .background(
                        Circle()
                            .fill(secondaryColor)
                            .frame(width: 130, height: 130, alignment: .center)
                            .opacity(0.5)
                    )
            
                Spacer().frame(height: 70)
                // MARK: - CIRCLE EXAMPLE #2
                Circle()
                    .fill(Color.pink)
                    .frame(width: 100, height: 100)
                    .overlay(
                        Text("1")
                            .font(.largeTitle)
                            .foregroundStyle(Color.white)
                    )
                    // outer part
                    .background(
                        Circle()
                            .fill(Color.purple)
                            .frame(width: 115, height: 115)
                    )
                
                
                Spacer().frame(height: 40)
                // MARK: - RECTANGLE EXAMPLE #3
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                    .overlay(
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 50, height: 50)
                        , alignment: .topTrailing
                        )
                    .overlay(
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 50, height: 50)
                        ,alignment: .bottomLeading
                    )
                    .background(
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 150, height: 150)
                    )
                
                // MARK: - System Icons
                Spacer().frame(height: 35)
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [heartPrimaryColor, .purple]
                            , startPoint: .topTrailing
                            , endPoint: .bottomLeading
                        )
                    )
                    .frame(width: 100, height: 100, alignment: .center)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(Color.white)
                        , alignment: .center
                    )
                Spacer().frame(height: 60)
                // Much Better approach
                Image(systemName: "heart.fill")
                    .font(.system(size: 50))
                    .foregroundStyle(Color.white)
                    .background(
                        Circle()
                            .foregroundStyle(
                                LinearGradient(colors: [Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))], startPoint: .topTrailing, endPoint: .bottomLeading)
                            )
                            .frame(width: 120, height: 120)
                            .shadow(color:Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)), radius: 10, x: 0.0, y: 5)
                            .overlay(
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 35, height: 35)
                                    .overlay(
                                        Text("9")
                                            .font(.system(size: 20, weight: .bold))
                                            .foregroundStyle(Color.white)
                                    )
                                , alignment: .topTrailing
                                    
                            )
                    )
                
            }

                
        }
    }

    #Preview {
        SeventhLesson()
    }
