//
//  CommandPattern.swift
//  design_patterns
//
//  Created by mac on 10/1/19.
//  Copyright © 2019 VRLab. All rights reserved.
//

import Foundation

protocol Order {
    func execute()
}

class MomoOrder: Order{
    
    var chef: Chef!
    
    init(chef: Chef){
        self.chef = chef
    }
    
    func execute() {
        chef.cookMomo()
    }
}

class FishOrder: Order{
    
    var chef: Chef!
    
    init(chef: Chef){
        self.chef = chef
    }
    
    func execute() {
        chef.grillFish()
    }
}

class Waiter{
    var orders = [Order]()
    
    func take(order: Order){
        self.orders.append(order)
    }
    
    func passOrderToChef(){
        for order in orders{
            order.execute()
        }
        orders = []
    }
    
}

class Chef{
    func cookMomo(){
        print("Momo Ready!!")
    }
    
    func grillFish(){
        print("Fish Grilled!!")
    }
}
