//
//  ContentView.swift
//  swiftonly
//
//  Created by Elle Jay Kadfur on 10/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
            Text("Hellfo, world!").foregroundColor(Color.orange).multilineTextAlignment(.center).bold().font(.largeTitle)
//            Spacer().frame(alignment: .bottom)
            Text("yo, world!")
            Image("new-imag").resizable().aspectRatio(contentMode: .fit).frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.width * 0.3)
        }
      
//        .padding()
    }
}

#Preview {
    ContentView()
}
