//
//  SingletonPattern.swift
//  design_patterns
//
//  Created by mac on 9/30/19.
//  Copyright © 2019 VRLab. All rights reserved.
//

import Foundation

class Store {
    var riceInKg = 100
    static let shared = Store()
}

class Farmer{
    let store = Store.shared
    func addToStore(){
        store.riceInKg += 10
    }
}

class Consumer{
    let store = Store.shared
    func consumeFromStore(){
        store.riceInKg -= 10
    }
}

class ShopKeeper{
    let store = Store.shared
    func addToShop(){
        store.riceInKg -= 25
    }
}
