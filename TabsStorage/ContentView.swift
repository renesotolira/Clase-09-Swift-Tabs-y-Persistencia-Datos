//
//  ContentView.swift
//  TabsStorage
//
//  Created by Rene Soto Lira on 04/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                WelcomeView()
            }
            
            Tab("Contador", systemImage: "clock") {
                CounterView()
            }
        }
        .tint(.red)
        
    }
}

#Preview {
    ContentView()
}
