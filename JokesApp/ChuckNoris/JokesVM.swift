//
//  JokesVM.swift
//  ChuckNoris
//
//  Created by Elle Jay Kadfur on 10/16/23.
//

import Foundation
import Alamofire

class JokesVM: ObservableObject {
    
    @Published var jokes = [Value]()
    
    init() {
        getJokes()
    }
    
    func getJokes(count: Int = 6) {
//        AF.request("https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json").responseDecodable { response in
//            switch response.result {
//            case .success(let data):
//            case .failure(let e):
//                
//            }
//        }
        AF.request("https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json", method: .get).responseDecodable(of:Welcome.self) { [weak self] response in
            switch response.result {
            case .success(let data):
                print()
                 self?.jokes += data.value
            case .failure(let e):
                print(e)
            }
        }
    }
}


//http://api.icndb.com/jokes/random/\(count)
