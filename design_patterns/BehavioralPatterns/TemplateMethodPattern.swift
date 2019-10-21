//
//  TemplateMethodPattern.swift
//  design_patterns
//
//  Created by mac on 10/17/19.
//  Copyright © 2019 VRLab. All rights reserved.
//

import Foundation

class Assembler {
    func assembleDevice(){
        getCasing()
        addRam()
        addMemory()
        addBattery()
        addScreen()
    }
    
    func getCasing(){}
    func addRam(){
        print("Ram added")
    }
    func addMemory(){
        print("Memory added")
    }
    func addScreen(){}
    func addBattery(){}
}

class Laptop: Assembler{
    override func getCasing() {
        print("Casing for laptop")
    }
    
    override func addBattery() {
        print("Battery added")
    }
    
    override func addScreen() {
        print("14\" screen added")
    }
}

class Desktop: Assembler{
    override func getCasing() {
        print("CPU casing for desktop")
    }
    
    override func addScreen() {
        print("Dell UHD Monitor added")
    }
}

