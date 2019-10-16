//
//  BridgePattern.swift
//  design_patterns
//
//  Created by mac on 10/16/19.
//  Copyright © 2019 VRLab. All rights reserved.
//

import Foundation

class Background {
    let time: TimeOfDay!
    
    init(time: TimeOfDay) {
        self.time = time
        addSky()
        addCloud()
    }
    
    func addSky(){
        print("Draw Sky\(time.suffix).png")
    }
    
    func addCloud(){
        print("Draw Clouds\(time.suffix).png")
    }
}

class Mountain: Background{
    override init(time: TimeOfDay) {
        super.init(time: time)
        addMountain()
    }
    
    func addMountain(){
        print("Draw Mountain\(time.suffix).png")
    }
}

class City: Background{
    override init(time: TimeOfDay) {
        super.init(time: time)
        addBuildings()
    }
    
    func addBuildings(){
        print("Draw Buildings\(time.suffix).png")
    }
}


protocol TimeOfDay{
    var suffix: String{get}
}

class Noon: TimeOfDay{
    var suffix = "-noon"
    
}

class Dusk: TimeOfDay{
    var suffix = "-dusk"
}

class Night: TimeOfDay{
    var suffix = "-night"
}

class Morning: TimeOfDay{
    var suffix = "-morning"
}
