//
//  GameView.swift
//  GameApp
//
//  Created by Sabith Salman on 2024-11-23.
//

import SwiftUI

enum MathOperators: String, CaseIterable{
    case addition = "+"
    case substraction = "-"
    case multiplication = "*"
    case division = "/"
}

struct GameView: View {
    @State var answer: String = ""
    @State var points: Int = 0
    var body: some View {
        VStack{
            Text("Guess the answer")
            Text("What is x + 1 = ?")
            HStack{
                TextField("Enter answer here",text: $answer)
                Button("Submit"){
                    
                }
            }
            
            Text("\(points)")
                .font(.system(size:150))
            Button("Next"){
                
            }
            
            
            
            
        }
        
    }
}

#Preview {
    GameView()
}
