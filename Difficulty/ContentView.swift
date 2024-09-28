//
//  ContentView.swift
//  Difficulty
//
//  Created by Sebastián Rubio on 27/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var indexArray: [Int] = [0]
    
    var body: some View {
        VStack (alignment: .center) {
            Text("Game Difficulty")
                .bold()
                .font(.system(size: 30))
                .padding(.bottom, 30)
            
            ButtonView(
                index: 1,
                indexArray: $indexArray,
                level: "Begginer",
                message: "Designed for players new to the game or genre."
            )
            ButtonView(
                index: 2,
                indexArray: $indexArray,
                level: "Easy",
                message: "Still relatively easy, but with slightly more challenges. "
            )
            ButtonView(
                index: 3,
                indexArray: $indexArray,
                level: "Moderate",
                message: " A balanced level of difficulty."
            )
            ButtonView(
                index: 4,
                indexArray: $indexArray,
                level: "Difficult",
                message: "Gameplay demands skill, strategy, and quick thinking."
            )
            ButtonView(
                index: 5,
                indexArray: $indexArray,
                level: "Hard",
                message: "The toughest challenge, requiring mastery of the game."
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
