//
//  StatePattern.swift
//  design_patterns
//
//  Created by mac on 10/21/19.
//  Copyright © 2019 VRLab. All rights reserved.
//

import Foundation

protocol TVState{
    func powerButtonClicked()
    func volumeUpButtonClicked()
    func volumeDownButtonClicked()
    func channelUpButtonClicked()
    func channelDownButtonClicked()
}

class Off:TVState{
    var tv: TV!
    
    init(tv: TV){
        self.tv = tv
    }
    
    func volumeUpButtonClicked() {
    }
    
    func volumeDownButtonClicked() {
    }
    
    func powerButtonClicked() {
        tv.state = On(tv: tv)
        print("tv On")
    }
    
    func channelUpButtonClicked(){
    }
    
    func channelDownButtonClicked(){
    }
}

class On: TVState{
    var tv: TV!
    
    init(tv: TV){
        self.tv = tv
    }
    
    func powerButtonClicked() {
        tv.state = Off(tv: tv)
        print("tv Off")
    }
    
    func volumeUpButtonClicked() {
        tv.volume += 1
        print("volume:",tv.volume)
    }
    
    func volumeDownButtonClicked() {
        tv.volume -= 1
        print("volume:",tv.volume)
    }
    
    func channelUpButtonClicked(){
        tv.channelNumber += 1
        print("channel:",tv.channelNumber)
    }
    
    func channelDownButtonClicked(){
        tv.channelNumber -= 1
        print("channel:",tv.channelNumber)
    }
}

class TV{
    var state: TVState!
    var channelNumber = 10
    var volume = 15
    
    init(){
        state = Off(tv: self)
    }
    
    func powerButtonClicked(){
        state.powerButtonClicked()
    }
    
    func volumeUpButtonClicked(){
        state.volumeUpButtonClicked()
    }
    
    func volumeDownButtonClicked(){
        state.volumeDownButtonClicked()
    }
    
    func channelUpButtonClicked(){
        state.channelUpButtonClicked()
    }
    
    func channelDownButtonClicked(){
        state.channelDownButtonClicked()
    }
}
