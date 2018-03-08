//
//  StrategyPattern.swift
//  design_patterns
//
//  Created by VRLab on 3/6/18.
//  Copyright © 2018 VRLab. All rights reserved.
//

import Foundation

protocol CharacterMove{
    func makeMove()
}

class WalkForward: CharacterMove{
    func makeMove() {
        print("walk forward")
    }
}

class WalkBackward: CharacterMove{
    func makeMove() {
        print("walk backward")
    }
}

class TurnRight: CharacterMove{
    func makeMove() {
        print("turn right")
    }
}

class TurnLeft: CharacterMove{
    func makeMove() {
        print("turn left")
    }
}

class Hero{
    var chMove : CharacterMove?
    
    func setMove(move: CharacterMove){
        chMove = move
        chMove?.makeMove()
    }
}
