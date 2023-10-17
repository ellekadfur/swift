//
//  ContentView.swift
//  PhotoGal
//
//  Created by Elle Jay Kadfur on 10/16/23.
//

import SwiftUI
import PhotosUI

struct ContentView: View {
    
    @State var selectedItem: [PhotosPickerItem] = []
    @State var data: Data?
    
    var body: some View {
        VStack {
            if let data = data {
                if let s = UIImage(data: data) {
                    Image(uiImage: s).resizable().frame(width:300, height:300, alignment: .center)
                }
            }
           
            PhotosPicker(selection: $selectedItem, matching: nil) {
                Text("Select")
            }.onChange(of: selectedItem) { oldValue, newValue in
                guard let item = selectedItem.first else { return }
                
                item.loadTransferable(type: Data.self) { result in
                    switch result {
                    case .success(let data):
                        print()
                        if let data = data {
                            self.data = data
                        }
                    case .failure(let e):
                        print(e)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
