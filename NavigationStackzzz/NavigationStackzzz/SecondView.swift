//
//  SecondView.swift
//  NavigationStackzzz
//
//  Created by Elle Jay Kadfur on 10/16/23.
//

import SwiftUI

struct SecondView: View {
    
//    let dog: Dog
    @State var path: [Dog] = []

    var body: some View {
//        VStack {
//            Text(dog.name)
//            Text(dog.id.uuidString)
//        }
        
        NavigationStack(path: $path) {
            List(dogs) {e in
                NavigationLink(e.name, value: e)
//                Text(e.name)
            }.navigationDestination(for: Dog.self) { e in
                VStack {
                    Text(e.name)
                    Button("add to path") {
                        path = [dogs[0], dogs[1]]
                    }
//                    Button("go back") {
//                        path = []//pop to root VC manipulation
//                    }
                }
            }
        }
    }
}

#Preview {
    SecondView()//(dog: dogs.first!)
}
