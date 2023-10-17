//
//  ContentView.swift
//  favbook
//
//  Created by Elle Jay Kadfur on 10/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
//                        VStack {
//                            Image(systemName: "globe")
//                                .imageScale(.large)
//                                .foregroundStyle(.tint)
//                            Text("Hello, world!")
//                        }
//                        .padding()
//                    List (favs) { e in
//                        Text(e.title)
//                    }
            List {
                ForEach(favs) { e in
                    Section(header: Text(e.title).font(.headline)) {
                        ForEach (e.elements) { d in
                            NavigationLink(destination: DetailsView(model: d)) {
                                HStack {
                                    Text(d.name)
                                    Text(d.desc)
                                    Text(d.img)
                                }
                            }
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Title"))
        }
        
    }
}

#Preview {
    ContentView()
}
