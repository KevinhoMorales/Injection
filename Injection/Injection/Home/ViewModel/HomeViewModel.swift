//
//  HomeViewModel.swift
//  Injection
//
//  Created by Kevinho Morales on 17/7/21.
//

import Foundation

class HomeViewModel {
    
    var homeModel = [HomeModel]()
    var manager: NetworkManagerProtocol
    var homeCount: Int {
        return homeModel.count
    }
    
    init(manager: NetworkManagerProtocol) {
        self.manager = manager
        manager.retrieveData { [weak self] homeModel in
            self?.homeModel = homeModel
        }
    }
}
