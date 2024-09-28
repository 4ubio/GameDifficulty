//
//  ButtonView.swift
//  Difficulty
//
//  Created by Sebastián Rubio on 27/09/24.
//

import SwiftUI

struct ButtonView: View {
    
    @State var level: String
    @State var message: String
    @State var selected: Bool
    
    var body: some View {
        VStack (spacing: 15) {
            Button(action: {
                withAnimation(.easeIn(duration: 0.5)){
                    selected.toggle()
                }
            }) {
                
                selected ?
                    Image(systemName: "figure.run")
                        .font(.system(size: 35))
                :
                    Image(systemName: "figure.stand")
                        .font(.system(size: 35))
                
                Text(level)
                    .font(.system(size: 25))
                    .bold()
                    .padding(.leading, 10)
            }
                .frame(height: 65)
                .frame(maxWidth: selected ? .infinity : UIScreen.main.bounds.width / 2)
                .foregroundColor(.white)
                .background(selected ? .green : .black)
                .clipShape(.rect(cornerRadius: 20))
                .shadow(radius: 10, x: 10, y: 10)
            
            Text(message)
                .font(.system(size: 20))
                .bold()
                .opacity(selected ? 1 : 0)
        }
    }
}

#Preview {
    ButtonView(
        level: "Easy",
        message: "Designed for players new to the game or genre.",
        selected: false
    )
}
