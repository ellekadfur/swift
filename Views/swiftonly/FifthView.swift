//
//  FifthView.swift
//  swiftonly
//
//  Created by Elle Jay Kadfur on 10/16/23.
//

import SwiftUI

struct FifthView: View {
    
    @State var myName = "James"
    var body: some View {
        VStack {
            Text(myName).font(.largeTitle).padding()
            TextField("placeholder", text:$myName)
        }
    }
}

#Preview {
    FifthView()
}
