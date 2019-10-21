//
//  ObserverPattern.swift
//  design_patterns
//
//  Created by VRLab on 3/6/18.
//  Copyright © 2018 VRLab. All rights reserved.
//

import Foundation

protocol Observer{
    var name: String{get}
    func update()
}

class Weather{
    private var observers = [Observer]()
    private var _state : String!
    var state: String{
        set {
            _state = newValue
            notify()
        }
        get {
            return _state
        }
    }
    
    func addObserver(observer: Observer){
        observers.append(observer)
    }
    
    func removeObserver(observer: Observer){
        observers = observers.filter{ $0.name != observer.name }
    }
    
    func notify(){
        for observer in observers{
            observer.update()
        }
    }
}

class User: Observer{
    var name: String = ""
    
    private let weather : Weather!
    
    init(subject: Weather, name: String){
        weather = subject
        self.name = name
        weather.addObserver(observer: self)
    }
    
    func update() {
        print("Hello!",name,", today is",weather.state)
    }
    
}

class Ai: Observer{
    var name: String = ""
    
    private let weather : Weather!
    
    init(subject: Weather, name: String){
        weather = subject
        self.name = name
        weather.addObserver(observer: self)
    }
    
    func update() {
        switch weather.state {
        case "rainy":
            print("shut down, its", weather.state)
        default:
            print("carry on ,its", weather.state)
        }
    }
}
