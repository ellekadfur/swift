//
//  ContentView.swift
//  ChuckNoris
//
//  Created by Elle Jay Kadfur on 10/16/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesVM()
    
    var body: some View {
        NavigationView {
            List(jokesVM.jokes) { e in
                Text(e.joke)
            }
            .toolbar {
                Button(action: addJoke, label: {
                    Text("Add")
                })
            }
            .navigationTitle(Text("Hello"))
        }
    }
    
    func addJoke() {
        jokesVM.getJokes()
    }
}

#Preview {
    ContentView()
}
