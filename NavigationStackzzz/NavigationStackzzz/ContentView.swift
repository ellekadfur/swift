//
//  ContentView.swift
//  NavigationStackzzz
//
//  Created by Elle Jay Kadfur on 10/16/23.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        //        NavigationView {
        NavigationStack {
            List {
                Section("dogs") {
                    ForEach(dogs) {e in
                        //                        NavigationLink(destination: {
                        ////                           SecondView(dog: e)
                        //                            Text(e.name)
                        //                       }, label: {
                        //                           Text(e.name)
                        //                       })
                        NavigationLink(e.name, value: e)
                    }
                }
                Section("cats") {
                    ForEach(cats) {e in
                        //                        NavigationLink(destination: {
                        ////                           SecondView(dog: e)
                        //                            Text(e.name)
                        //                       }, label: {
                        //                           Text(e.name)
                        //                       })
                        NavigationLink(e.name, value: e)
                        
                    }
                }
            } .navigationTitle("hello").navigationDestination(for: Dog.self) { e in
                Text(e.name)
            }
            .navigationDestination(for: Cat.self) { e in
                Text(e.name)
            }
            //            VStack {
            //                Image(systemName: "globe")
            //                    .imageScale(.large)
            //                    .foregroundStyle(.tint)
            //                Text("Hello, world!")
            //            }
            //            .padding()
        }
        //    }
        
        
    }
}

#Preview {
    ContentView()
}
