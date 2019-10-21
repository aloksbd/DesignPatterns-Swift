//
//  CompositePattern.swift
//  design_patterns
//
//  Created by mac on 9/30/19.
//  Copyright © 2019 VRLab. All rights reserved.
//

import Foundation

protocol SettingList {
    func getOptions()
}

class SuperSetting: SettingList{
    var title: String!
    var settings = [SettingList]()
    init(title: String, settings: [SettingList] = []) {
        self.title = title
        self.settings = settings
    }
    
    func getOptions() {
        print(title!)
        print("===============")
        for setting in settings{
            setting.getOptions()
        }
    }
    
    func add(settings: [SettingList]){
        self.settings += settings
    }
    
}

class Setting: SettingList{
    
    var title: String!
    var options = Option()
    
    init(title: String){
        self.title = title
    }
    
    func getOptions() {
        print(title!)
        print("---------------")
        options.printOptions()
        print("---------------")
    }
    
    
}


class Option{
    func printOptions(){
        print("  option1 \n  option2")
    }
}
