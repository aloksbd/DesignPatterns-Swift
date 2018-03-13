//
//  main.swift
//  design_patterns
//
//  Created by VRLab on 3/6/18.
//  Copyright © 2018 VRLab. All rights reserved.
//

import Foundation

//-----strategy

print("----Strategy----")

let player1 = Hero()
let player2 = Hero()
player1.setMove(move: WalkForward())
player2.setMove(move: TurnLeft())

//-----observer

print("----Observer----")

let weather = Weather()
let sameer = User(subject: weather, name: "Sameer")
let bot1 = Ai(subject: weather, name: "Bot1")

weather.state = "sunny"
weather.state = "rainy"

//-----decorator

print("----decorator----")

let ram = RankB(level: RankA(level: Level1(department: Engineer())))
let shyam = RankB(level: Level2(department: Engineer()))
let hari = RankA(level: Level2(department: Management()))
let sita = RankB(level: Level1(department: Management()))

print("ram (e,ra,l1) salary",ram.salary)
print("shyam (e,rb,l2) salary",shyam.salary)
print("hari (m,ra,l2) salary",hari.salary)
print("sita (m,rb,l1) salary",sita.salary)
print("ram (e,ra,l1) benefits",ram.benefits)
print("shyam (e,rb,l2) benefits",shyam.benefits)
print("hari (m,ra,l2) benefits",hari.benefits)
print("sita (m,rb,l1) benefits",sita.benefits)
print("ram (e,ra,l1) bonus",ram.bonus)

//-----factory

print("----factory----")

if let p1 = FighterFactory().getFighter(weaponRange: "short"){
    if let p2 = FighterFactory().getFighter(weaponRange: "long"){

        print(p1.name, p1.weapon,p1.health)
        print(p2.name,p2.weapon,p2.health)
    }
}







