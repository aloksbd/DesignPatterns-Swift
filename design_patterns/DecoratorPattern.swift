//
//  DecoratorPattern.swift
//  design_patterns
//
//  Created by VRLab on 3/6/18.
//  Copyright © 2018 VRLab. All rights reserved.
//

import Foundation

protocol Employee {
    var salary: Int {get}
}

class Developer: Employee {
    var salary: Int{
        get {
            return 1000
        }
    }
}

class Management: Employee{
    var salary: Int{
        get{
            return 1500
        }
    }
}

protocol EmployerDecorator: Employee{
    var department: Employee { get }
}

class Level1: EmployerDecorator{
    var department: Employee
    
    var salary: Int{
        return department.salary + 200
    }
    
    init(department: Employee) {
        self.department = department
    }
}

class Level2: EmployerDecorator{
    var department: Employee
    
    var salary: Int{
        get{
        switch department {
        case is Developer:
            return department.salary + 500
        default:
            return department.salary + 700
            }
        }
    }
    
    init(department: Employee) {
        self.department = department
    }
}

protocol Rank: EmployerDecorator {
    var level: EmployerDecorator{get}
    var benefits: [String]{get}
}

class RankA: Rank{
    var level: EmployerDecorator
    
    var benefits: [String]{
        get {
            return ["Health insurance", "Car fuel"]
        }
    }
    
    var department: Employee{
        get{
            return level.department
        }
    }
    
    var salary: Int{
        get{
            return level.salary + 100
        }
    }
    
    init(level: EmployerDecorator){
        self.level = level
    }
}

class RankB: Rank{
    var level: EmployerDecorator
    
    var benefits: [String]{
        get {
            return ["Health insurance for whole family", "New Lamborghini"]
        }
    }
    
    var bonus: Int{
        get{
            return 100
        }
    }
    
    var department: Employee{
        get{
            return level.department
        }
    }
    
    var salary: Int{
        get{
            return level.salary + 200
        }
    }
    
    init(level: EmployerDecorator){
        self.level = level
    }
}
