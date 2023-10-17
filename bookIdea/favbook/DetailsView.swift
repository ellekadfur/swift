//
//  DetailsView.swift
//  favbook
//
//  Created by Elle Jay Kadfur on 10/16/23.
//

import SwiftUI

struct DetailsView: View {
    
    var model : FavElement
    
    var body: some View {
        VStack {
            Image(model.img).resizable().aspectRatio(contentMode: .fit)
            Text(self.model.name).font(.largeTitle).padding()
            Text(model.desc)
        }
    }
}

#Preview {
    DetailsView(model: itema)
}
