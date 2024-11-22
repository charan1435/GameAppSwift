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
    
    @State var mathOperator: MathOperators = MathOperators.allCases.randomElement()!
    @State var firstNumber: Int = Int.random(in: 0...9)
    @State var secondNumber: Int = Int.random(in: 0...9)
    
    @State var answer: Int? = nil
    @State var points: Int = 0
    var body: some View {
        VStack{
            Text("Guess the answer")
                .foregroundStyle(Color(.green))
            Text("What is \(firstNumber)\(mathOperator.rawValue)\(secondNumber)")
                .font(.largeTitle)
                .bold()
            HStack{
                TextField("Enter answer here",value : $answer , format: .number)
                Button("Submit"){
                    
                }
                .buttonStyle(.bordered)
                .tint(.blue)
            }
            .padding()
            .border(.black,width: 1)
            
            Text("\(points)")
                .font(.system(size:150))
            Button("Next"){
                
            }
            .buttonStyle(.bordered)
            .tint(.green)
            
            
            
            
        }
        
    }
}

#Preview {
    GameView()
}
