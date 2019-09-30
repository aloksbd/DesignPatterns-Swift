//
//  AbstractFactoryPattern.swift
//  design_patterns
//
//  Created by mac on 9/30/19.
//  Copyright © 2019 VRLab. All rights reserved.
//

import Foundation



protocol Hero {
    var weapon: Weapon{get}
    func attack()
}

class Axe: Hero{
    var weapon: Weapon
    
    init(weapon: Weapon){
        self.weapon = weapon
    }
    
    func attack() {
        weapon.attack()
    }
}

class Windranger: Hero{
    var weapon: Weapon
    
    init(weapon: Weapon){
        self.weapon = weapon
    }
    
    func attack() {
        weapon.attack()
    }
}

protocol Weapon{
    var name: String{get}
    var damage: Int{get}
    func attack()
}

class HugeAxe: Weapon{
    var name = "HugeAxe"
    
    var damage = 50
    
    func attack() {
        print(name, "dealt", damage, "damage")
    }
}

class BowAndArrow: Weapon{
    var name = "BowAndArrow"
    
    var damage = 40
    
    func attack() {
        print(name, "dealt", damage, "damage")
    }
}


protocol HeroFactory{
    func getHero() -> Hero
    func getWeapon() -> Weapon
}

class MeleeHeroFactory: HeroFactory{
    func getHero() -> Hero {
        return Axe(weapon: MeleeHeroFactory().getWeapon())
    }
    
    func getWeapon() -> Weapon {
        return HugeAxe()
    }
}

class RangedHeroFactory: HeroFactory{
    func getHero() -> Hero {
        return Windranger(weapon: RangedHeroFactory().getWeapon())
    }
    
    func getWeapon() -> Weapon {
        return BowAndArrow()
    }
}
