//
//  ContentView.swift
//  GameApp
//
//  Created by Sabith Salman on 2024-11-23.
//

import SwiftUI

struct ContentView: View {
    @State var fontSize: Double
    @State var selectedColor: AppTheme
    
    var body: some View {
        TabView{
            GameView(fontSize: $fontSize, selectedColor: $selectedColor)
                .tabItem{
                    Label("Game", systemImage: "house")
                }
            SettingsView(fontSize: $fontSize, selectedColor: $selectedColor)
                .tabItem{
                    Label("Settings", systemImage: "gear")
                    
                }
        }
    }
}

#Preview {
    ContentView(fontSize: 20.0, selectedColor: .red)
}
