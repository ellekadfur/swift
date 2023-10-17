//
//  Model.swift
//  ChuckNoris
//
//  Created by Elle Jay Kadfur on 10/16/23.
//

import Foundation


// MARK: - Welcome
struct Welcome: Identifiable, Codable {
    let id = UUID()
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value: Identifiable, Codable {
    let id: Int
    let joke: String
    let categories: [String]
}


//https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json
