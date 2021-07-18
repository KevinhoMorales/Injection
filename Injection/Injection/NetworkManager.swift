//
//  NetworkManager.swift
//  Injection
//
//  Created by Kevinho Morales on 17/7/21.
//

import Foundation

protocol NetworkManagerProtocol {
    func retrieveData(completion: @escaping ([HomeModel]) -> ())
}

class NetworkManager: NetworkManagerProtocol {
    static let shared: NetworkManager = {
        let newNetworkManager = NetworkManager()
        return newNetworkManager
    }()
    
    func retrieveData(completion: @escaping ([HomeModel]) -> ()) {
        let homeModel = [HomeModel(name: "Kevinho"),
                         HomeModel(name: "Jimena"),
                         HomeModel(name: "Madison"),
                         HomeModel(name: "Freddy"),
                         HomeModel(name: "Nataly"),
                         HomeModel(name: "Jimena")]
        completion(homeModel)
    }
}
