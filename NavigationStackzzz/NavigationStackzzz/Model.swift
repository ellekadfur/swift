//
//  Model.swift
//  NavigationStackzzz
//
//  Created by Elle Jay Kadfur on 10/16/23.
//

import Foundation

struct Dog: Identifiable, Hashable {
    var id = UUID()
    let name: String
}

let dogs: [Dog] = [Dog(name: "joey"), Dog(name: "Mike"), Dog(name: "Lucky"), Dog(name: "jack"), Dog(name: "bob")]

struct Cat: Identifiable, Hashable {
    var id = UUID()
    let name: String
}

let cats: [Cat] = [Cat(name: "cjoey"), Cat(name: "cMike"), Cat(name: "cLucky"), Cat(name: "cjack"), Cat(name: "cbob")]
