//
//  FourthView.swift
//  swiftonly
//
//  Created by Elle Jay Kadfur on 10/16/23.
//

import SwiftUI

struct FourthView: View {
    
    @State var myName = "Alli"
    
    var body: some View {
        
        VStack {
            Text(myName).font(.largeTitle)
            Button(action: {
                myName = "joe"
                print("hi")
            }, label: {
                
                Text("Image")
                
            })
        }
    }
}

#Preview {
    FourthView()
}
