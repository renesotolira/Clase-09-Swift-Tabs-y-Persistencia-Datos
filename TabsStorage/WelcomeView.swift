//
//  WelcomeView.swift
//  TabsStorage
//
//  Created by Rene Soto Lira on 04/10/26.
//

import Foundation
import SwiftUI

struct WelcomeView: View {
    @AppStorage("myName") private var savedName = ""
    @State private var name = ""

    var body: some View {
        VStack {
            TextField("Dime tu nombre:", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()

            Button("Guardar") {
                savedName = name
            }
            .buttonStyle(.borderedProminent)
            .tint(.green)

            Text("Bienvenido \(savedName)")
                .font(.title2)
                .padding()
        }
    }
}

#Preview {
    WelcomeView()
}
