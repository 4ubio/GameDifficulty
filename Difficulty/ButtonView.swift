//
//  ButtonView.swift
//  Difficulty
//
//  Created by Sebastián Rubio on 27/09/24.
//

import SwiftUI

struct ButtonView: View {
    
    @State var index: Int
    @Binding var indexArray: [Int]
    @State var level: String
    @State var message: String
    
    var selected: Bool {
        return (indexArray.last == index) ? true : false
    }
    
    var body: some View {
        VStack (spacing: 15) {
            Button(action: {
                withAnimation(.easeIn(duration: 0.5)){
                    if (indexArray.last == index) {
                        indexArray.append(0)
                    } else {
                        indexArray.append(index)
                    }
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
        index: 1,
        indexArray: .constant([]),
        level: "Easy",
        message: "Designed for players new to the game or genre."
    )
}
