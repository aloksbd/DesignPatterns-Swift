//
//  main.swift
//  design_patterns
//
//  Created by VRLab on 3/6/18.
//  Copyright © 2018 VRLab. All rights reserved.
//

import Foundation

//MARK:strategy----------------
print("----Strategy----")

let player1 = Character()
let player2 = Character()
player1.setMove(move: WalkForward())
player2.setMove(move: TurnLeft())



print("\n\n")
//MARK:observer----------------
print("----Observer----")

let weather = Weather()
let sameer = User(subject: weather, name: "Sameer")
let bot1 = Ai(subject: weather, name: "Bot1")

weather.state = "sunny"
weather.state = "rainy"




print("\n\n")
//MARK:decorator----------------
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




print("\n\n")
//MARK:FactoryMethod----------------
print("----FactoryMethod----")

if let p1 = FighterFactory().getFighter(weaponRange: "short"){
    if let p2 = FighterFactory().getFighter(weaponRange: "long"){

        print(p1.name, p1.weapon,p1.health)
        print(p2.name,p2.weapon,p2.health)
    }
}




print("\n\n")
//MARK:Composite----------------
print("----Composite----")

let volume = Setting(title: "Volume")
let stereo = Setting(title: "Stereo")
let audioSetting = SuperSetting(title: "Audio",settings: [volume,stereo])

let resolution = Setting(title: "Resolution")
let supportingFormats = Setting(title: "Supporting Formats")
let videooSetting = SuperSetting(title: "Video")
videooSetting.add(settings: [resolution,supportingFormats])

let wifiSetting = Setting(title: "Wifi")

let settings = SuperSetting(title: "Mobile Settings", settings: [audioSetting,videooSetting,wifiSetting])
settings.getOptions()



print("\n\n")
//MARK:Singleton----------------
print("----Singleton----")
let Kamal = Farmer()
let Sabin = ShopKeeper()
let Sanam = Consumer()
let store = Store.shared

Kamal.addToStore()
print(store.riceInKg)
Sabin.addToShop()
print(store.riceInKg)
Sanam.consumeFromStore()
print(store.riceInKg)



print("\n\n")
//MARK:AbstractFactory----------------
print("----AbstractFactory----")

let axe = MeleeHeroFactory().getHero()
let windRanger = RangedHeroFactory().getHero()

axe.attack()
windRanger.attack()



print("\n\n")
//MARK:Command----------------
print("----Command----")

let waiter = Waiter()
let chef = Chef()
waiter.take(order: FishOrder(chef: chef))
waiter.take(order: MomoOrder(chef: chef))
waiter.take(order: FishOrder(chef: chef))
waiter.passOrderToChef()



print("\n\n")
//MARK:Adapter----------------
print("----Adapter----")

let toya = MathMaster()
print(toya.areaOfRectangleWith(length: 10, height: 20, unit: .meter))
print(toya.areaOfRectangleWith(length: 10, height: 20, unit: .feet))






