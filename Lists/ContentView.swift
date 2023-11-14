//
//  ContentView.swift
//  Lists
//
//  Created by Mark Nair on 11/14/23.
//

import SwiftUI

struct ContentView: View {
    var sushiNames = ["Onigiri",
                      "Meguro Sushi",
                      "Tako Sushi",
                      "Avocado Maki",
                      "Tobiko Spicy Maki",
                      "Salmon Sushi",
                      "Hamachi Sushi",
                      "Kani Sushi",
                      "Tamago Sushi",
                      "California Roll",
                      "Shrimp Sushi",
                      "Ikura Sushi"]
    
    var sushiImages = ["onigiri",
                       "meguro-sushi",
                       "tako-sushi",
                       "avocado-maki",
                       "tobiko-spicy-maki",
                       "salmon-sushi",
                       "hamachi-sushi",
                       "kani-sushi",
                       "tamago-sushi",
                       "california-roll",
                       "shrimp-sushi",
                       "ikura-sushi"]
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
