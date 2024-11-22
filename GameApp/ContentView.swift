//
//  ContentView.swift
//  GameApp
//
//  Created by Sabith Salman on 2024-11-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            GameView()
                .tabItem{
                    Label("Game", systemImage: "house")
                }
            SettingsView()
                .tabItem{
                    Label("Settings", systemImage: "gear")
                    
                }
        }
    }
}

#Preview {
    ContentView()
}
