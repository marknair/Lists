//
//  ContentView.swift
//  Lists
//
//  Created by Mark Nair on 11/14/23.
//

import SwiftUI


struct ContentView: View {
    
    var menuItems = [Menu(name: "Onigiri", image: "onigiri"),
                     Menu(name: "Meguro Sushi", image: "meguro-sushi"),
                     Menu(name: "Tako Sushi", image: "tako-sushi"),
                     Menu(name: "Avocado Maki", image: "avocado-maki"),
                     Menu(name: "Avocado Maki", image: "tobiko-spicy-maki")]
    
    
    
//    var sushiNames = ["Onigiri",
//                      "Meguro Sushi",
//                      "Tako Sushi",
//                      "Avocado Maki",
//                      "Tobiko Spicy Maki",
//                      "Salmon Sushi",
//                      "Hamachi Sushi",
//                      "Kani Sushi",
//                      "Tamago Sushi",
//                      "California Roll",
//                      "Shrimp Sushi",
//                      "Ikura Sushi"]
//
//    var sushiImages = ["onigiri",
//                       "meguro-sushi",
//                       "tako-sushi",
//                       "avocado-maki",
//                       "tobiko-spicy-maki",
//                       "salmon-sushi",
//                       "hamachi-sushi",
//                       "kani-sushi",
//                       "tamago-sushi",
//                       "california-roll",
//                       "shrimp-sushi",
//                       "ikura-sushi"]
    
    var body: some View {
        List(menuItems) { menuItem in
            BasicImageRow(menuItem: menuItem)
        }
        .listStyle(.plain)
    }
}

struct Menu: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

#Preview {
    ContentView()
}

struct BasicImageRow: View {
    var menuItem: Menu
    var body: some View {
        HStack {
            Image(menuItem.image)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(5)
            Text(menuItem.name)
        }
    }
}
