//
//  ContentView.swift
//  LoaderView
//
//  Created by Elle Jay Kadfur on 10/16/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstP: Double = 50
    @State var secondP: Double = 50
    @State var ThirdP: Double = 50
    var body: some View {
        ZStack {
            Circular(lineWidth: 40, backgroundColor: Color.blue.opacity(0.2), foregroundColor: Color.blue, percentage: firstP).frame(width: 350, height: 350).onTapGesture {
                if self.firstP == 0 {
                    firstP = 50
                } else {
                    firstP = 100
                }
            }
            Circular(lineWidth: 40, backgroundColor: Color.red.opacity(0.2), foregroundColor: Color.red, percentage: secondP).frame(width: 250, height: 250).onTapGesture {
                if self.secondP == 0 {
                    secondP = 50
                } else {
                    secondP = 100
                }
            }
            Circular(lineWidth: 40, backgroundColor: Color.green.opacity(0.2), foregroundColor: Color.green, percentage: ThirdP).frame(width: 150, height: 150).onTapGesture {
                if self.ThirdP == 0 {
                    ThirdP = 50
                } else {
                    ThirdP = 100
                }
            }
        }
        .padding()
        Text("Hello, World!")
    }
}

#Preview {
    ContentView()
}
