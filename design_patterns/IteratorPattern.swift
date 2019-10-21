//
//  IteratorPattern.swift
//  design_patterns
//
//  Created by mac on 10/21/19.
//  Copyright © 2019 VRLab. All rights reserved.
//

import Foundation

protocol Iterator {
    func next() -> Student
    func hasMore() -> Bool
    func reset()
}

class AlphabeticIterator: Iterator{
    var students: Students!
    var index: Int!
    
    init(students: Students){
        students.students.sort(by: {$0.name < $1.name})
        self.students = students
        index = 0
    }
    
    func next() -> Student {
        let student = students.students[index]
        index += 1
        return student
    }
    
    func hasMore() -> Bool {
        return index < students.students.count
    }
    
    func reset(){
        index = 0
    }
}

class RankIterator: Iterator{
    var students: Students!
    var index: Int!
    
    init(students: Students){
        students.students.sort(by: {$0.rank < $1.rank})
        self.students = students
        index = 0
    }
    
    func next() -> Student {
        let student = students.students[index]
        index += 1
        return student
    }
    
    func hasMore() -> Bool {
        return index < students.students.count
    }
    
    func reset(){
        index = 0
    }
}

class Students{
    fileprivate var students = [Student]()
    var iterator: Iterator!
    
    init(students: [Student]){
        self.students = students
    }
    
    func add(student: Student){
        students.append(student)
    }
    
    func setIterator(iterator: Iterator){
        self.iterator  = iterator
    }
}

class Student: CustomStringConvertible{
    var name: String!
    var room: String!
    var rank: Int!
    var description: String{
        return "name: \(name!) \nroom: \(room!)\nrank: \(rank!)"
    }
    
    init(name: String, room: String, rank: Int){
        self.name = name
        self.room = room
        self.rank = rank
    }
}
