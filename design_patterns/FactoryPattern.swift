//
//  FactoryPattern.swift
//  design_patterns
//
//  Created by VRLab on 3/13/18.
//  Copyright © 2018 VRLab. All rights reserved.
//

import Foundation

class Fighters{
    private var _weapon = String()
    var weapon: String{
        set{
            _weapon = newValue
        }
        get{
            return _weapon
        }
    }
    
    private var _name = String()
    var name: String{
        set{
            _name = newValue
        }
        get{
            return _name
        }
    }
    
    private var _health = Int()
    var health: Int{
        set{
            _health = newValue
        }
        get{
            return _health
        }
    }
}

class Melee: Fighters{
    override init() {
        super.init()
        weapon = "knife"
        name = "Zack"
        health = 150
    }
}

class Range: Fighters{
    override init() {
        super.init()
        weapon = "Arrow"
        name = "Lina"
        health = 100
    }
}

class FighterFactory{
    func getFighter(weaponRange: String) -> Fighters?{
        switch weaponRange {
        case "short":
            return Melee()
        case "long":
            return Range()
        default:
            return nil
        }
    }
}
