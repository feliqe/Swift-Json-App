//
//  ContentView.swift
//  Json-StarWars
//
//  Created by Feliqe Silva on 28-06-25.
//

import SwiftUI

struct ContentView: View {
    @State var vm = StarCardVM()
    
    var body: some View {
        NavigationStack {
            // listado de informacion
            List {
                ForEach(vm.cards) { card in
                    StarCardView(card: card)
                }
            }
            // titulo
            .navigationTitle("Star Wars Personajes")
        }
    }
}


#Preview {
    ContentView()
}
