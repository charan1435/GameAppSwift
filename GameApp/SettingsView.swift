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
    @Binding var fontSize: Double
    
    @Binding var selectedColor : AppTheme
    
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
                Color(colorForTheme(selectedColor))
                    .frame(width: 30, height: 30)
                }
            }
            
            
            
                
            
            
            
                .navigationTitle("Settings")
            
            
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
    
    }



#Preview {
    SettingsView(fontSize: .constant(20.0), selectedColor: .constant(.red))
}
