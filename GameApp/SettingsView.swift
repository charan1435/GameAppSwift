//
//  SettingsView.swift
//  GameApp
//
//  Created by Sabith Salman on 2024-11-23.
//

import SwiftUI

enum AppTheme : String,CaseIterable{
    case red = "Red"
    case green = "Green"
    case orange = "Orange"
}

struct SettingsView: View {
    @State var fontSize: Double = 20.0
    
    @State var selectedColor : Color = .red
    
    let colors: [Color] = [.red,.green,.orange]
    let colorNames: [String] = ["Red", "Green", "Orange"]
    
    var body: some View {
        NavigationStack{
            
            Slider(value: $fontSize, in: 0...100, step: 1){
                
            }
            Text("font size \(String(format: "%.2f", fontSize))")
            HStack{
                Text("Select system colour")
                Picker("", selection: $selectedColor){
                    ForEach(AppTheme.allCases, id: \.self){
                        theme in
                        Text(theme.rawValue)
                            .tag(theme.rawValue)
                    }
                            
                    }
                .pickerStyle(.wheel)
                Color(selectedColor)
                    .frame(width: 30, height: 30)
                }
            }
            
            
            
                
            
            
            
                .navigationTitle("Settings")
            
            
        }
    }


#Preview {
    SettingsView()
}
