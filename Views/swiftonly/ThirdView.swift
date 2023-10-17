//
//  ThirdView.swift
//  swiftonly
//
//  Created by Elle Jay Kadfur on 10/16/23.
//

import SwiftUI

struct ThirdView: View {
    
    let myArray = ["James", "Lars", "Kirk", "Rob", "joey", "mark", "mike", "jay", "jay", "jaye", "bobb"]
    var body: some View {
            List (myArray, id:\.self) { e in
                HStack {
                Image("new-imag").resizable().aspectRatio(contentMode: .fit).frame(width:30, height:30)
                Text(e).font(.largeTitle)
            }
        }
//        Text("Hello, World!")
//        List {
//            ForEach(myArray, id:\.self) { e in
//                HStack {
//                Image("new-imag").resizable().aspectRatio(contentMode: .fit).frame(width:30, height:30)
//                Text(e).font(.largeTitle)
//            }
//            }
//        }
    }
}

#Preview {
    ThirdView()
}
