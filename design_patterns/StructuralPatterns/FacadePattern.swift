//
//  FacadePattern.swift
//  design_patterns
//
//  Created by mac on 10/3/19.
//  Copyright © 2019 VRLab. All rights reserved.
//

import Foundation

class Carpenter{
    func furnishHouse(){
        print("House furnished")
    }
}

class Painter {
    func paintHouse(){
        print("House Painted in and out")
    }
}

class Electrician {
    func wireHouse(){
        print("House Wired \nNEW HOME THEATRE INSTALLED!!!")
    }
}

class ConstructionWorker{
    func constructHouse(){
        print("House ready for finishing")
    }
}

class Engineer{
    func designHouse(){
        print("House Designed")
    }
}

class Contractor{
    func buildHouse(){
        Engineer().designHouse()
        ConstructionWorker().constructHouse()
        Painter().paintHouse()
        Carpenter().furnishHouse()
        Electrician().wireHouse()
    }
}
