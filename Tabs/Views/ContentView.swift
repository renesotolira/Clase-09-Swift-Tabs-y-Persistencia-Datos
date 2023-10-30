//
//  ContentView.swift
//  Tabs
//
//  Created by Rene SL on 30/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            CounterView()
                .tabItem {
                    Image(systemName: "clock")
                    Text("Contador")
                }
        }.accentColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
