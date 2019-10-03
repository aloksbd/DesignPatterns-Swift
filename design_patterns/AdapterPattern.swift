//
//  AdapterPattern.swift
//  design_patterns
//
//  Created by mac on 10/3/19.
//  Copyright © 2019 VRLab. All rights reserved.
//

import Foundation

class RectangleInMeter {
    
    private let length, height: Double
    
    init(length: Double, height: Double){
        self.height = height
        self.length = length
    }
    
    var area: Double{
        get{
            return length * height
        }
    }
}

class FeetMeterAdapter{ //RectangleInFeet maybe??
    
    private var rectangle: RectangleInMeter!
    
    private func squareFeetFrom(squareMeter: Double) -> Double{
        return squareMeter * 10.76391
    }
    
    private func meterFrom(feet: Double) -> Double{
        return feet * 0.3048
    }
    
    init(length: Double, height: Double){
        let lengthInMeter = meterFrom(feet: length)
        let heightInMeter = meterFrom(feet: height)
        rectangle = RectangleInMeter(length: lengthInMeter, height: heightInMeter)
    }
    
    var area: Double{
        get{
            let areaInMeter = rectangle.area
            return squareFeetFrom(squareMeter: areaInMeter)
        }
    }
}

class MathMaster{
    enum unitType{
        case meter, feet
    }
    
    func areaOfRectangleWith(length: Double, height: Double, unit: unitType) -> String{
        switch unit{
        case .meter:
            let rectangle = RectangleInMeter(length: length, height: height)
            return "\(rectangle.area) square meter"
        case .feet:
            let rectangle = FeetMeterAdapter(length: length, height: height)
            return "\(rectangle.area) square feet"
        }
    }
}
