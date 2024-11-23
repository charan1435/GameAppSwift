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
    @Binding var fontSize : Double
    @Binding var selectedColor : AppTheme
    
    @State var mathOperator: MathOperators = MathOperators.allCases.randomElement()!
    @State var firstNumber: Int = Int.random(in: 0...9)
    @State var secondNumber: Int = Int.random(in: 0...9)
    @State var correctAnswer: Int? = nil
    
    @State var answer: Int? = nil
    @State var points: Int = 0
    var body: some View {
        VStack{
            Text("Guess the answer")
                .foregroundStyle(Color(colorForTheme(selectedColor)))
            Text("What is \(firstNumber)\(mathOperator.rawValue)\(secondNumber)")
                .font(.largeTitle)
                .bold()
            HStack{
                TextField("Enter answer here",value : $answer , format: .number)
                Button("Submit"){
                   // print("Answer is \(correctAnswer)")
                    
                    
                }
                .buttonStyle(.bordered)
                .tint(.blue)
            }
            .padding()
            .border(.black,width: 1)
            
            Text("\(points)")
                .font(.system(size:fontSize))
            Button("Next"){
                randomAnswer()
                
            }
            .buttonStyle(.bordered)
            .tint(.green)
            
            
            
            
        }
        .onAppear(){
            randomAnswer()
        }
        
    }
    // Helper function to map AppTheme to Color
        func colorForTheme(_ theme: AppTheme) -> Color {
            switch theme {
            case .red:
                return .red
            case .green:
                return .green
            case .orange:
                return .orange
            }
        }
    
    func  randomAnswer() {
        
        firstNumber = Int.random(in: 1...10)
        secondNumber = Int.random(in: 1...10)
        mathOperator = MathOperators.allCases.randomElement()!
        
        
        
        switch mathOperator {
        case .addition:
            correctAnswer = firstNumber + secondNumber
        case .substraction:
            correctAnswer = firstNumber - secondNumber
        case .multiplication:
            correctAnswer = firstNumber * secondNumber
        case .division:
            guard secondNumber != 0 else {
                randomAnswer()
                return }
            correctAnswer = firstNumber / secondNumber
        }
        
        
        
        
        
    }
}

#Preview {
    GameView(fontSize: .constant(20), selectedColor: .constant(.red))
}
