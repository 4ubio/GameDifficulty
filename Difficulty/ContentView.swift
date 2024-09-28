//
//  ContentView.swift
//  Difficulty
//
//  Created by Sebastián Rubio on 27/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .center) {
            Text("Game Difficulty")
                .font(.system(size: 30))
                .bold()
                .padding(.bottom, 30)
            
            ButtonView(
                level: "Begginer",
                message: "Designed for players new to the game or genre.",
                selected: false
            )
            ButtonView(
                level: "Easy",
                message: "Still relatively easy, but with slightly more challenges. ",
                selected: false
            )
            ButtonView(
                level: "Moderate",
                message: " A balanced level of difficulty.",
                selected: false
            )
            ButtonView(
                level: "Difficult",
                message: "Gameplay demands skill, strategy, and quick thinking.",
                selected: false
            )
            ButtonView(
                level: "Hard",
                message: "The toughest challenge, requiring mastery of the game.",
                selected: false
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
