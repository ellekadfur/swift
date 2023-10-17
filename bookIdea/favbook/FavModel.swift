//
//  FavModel.swift
//  favbook
//
//  Created by Elle Jay Kadfur on 10/16/23.
//

import Foundation


struct FavModel: Identifiable {
    var id = UUID()
    var title: String
    var elements:  [FavElement]
}

struct FavElement: Identifiable {
    var id = UUID()
    var img: String
    var desc: String
    var name: String
}


let itema = FavElement(img: "a", desc: "aaaa", name: "aaaanamr")
let b = FavElement(img: "b", desc: "bbb", name: "nameb")
let c = FavElement(img: "c", desc: "ccc", name: "cname")

let bands = FavModel (title: "Bands", elements: [itema, b ,c])


let d = FavElement(img: "d", desc: "eee", name: "eeefdsfd")
let e = FavElement(img: "e", desc: "ffff", name: "fffffdfsdfdsfdsf")
let f = FavElement(img: "f", desc: "ggg", name: "gggname")

let movies = FavModel (title: "Movies", elements: [d, e, f])


let favs = [bands, movies]
