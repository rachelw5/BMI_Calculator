//
//  BMILogic.swift
//  BMI Calculator
//
//  Created by Rachel on 2/25/24.
//

import Foundation

struct BMILogic {
    
    var metricSwitch = true
    var heightVal : Float = 0
    var weightVal : Float = 0
    var bmiValue : Float = 0
    var health : String = ""
    
    mutating func setSwitch(_ switchValue: Bool) {
        if switchValue {
            metricSwitch = true
        } else {
            metricSwitch = false
        }
    }
    
    mutating func getHeightVal(_ height: Float) -> Float {
        if metricSwitch == true {
            heightVal = Float(String(format: "%.1f", height))!
        } else {
            heightVal = Float(String(format: "%.1f", height))!
            return heightVal
        }
        return heightVal
    }
    
    mutating func getWeightVal(_ weight: Float) -> Float {
        if metricSwitch == true {
            weightVal = Float(String(format: "%.1f", weight))!
        } else {
            weightVal = Float(String(format: "%.1f", weight))!
            return weightVal
        }
        return weightVal
    }
    
    mutating func calculateBMI() -> String {
        
        
        //metric: (w in kgs / h^2 in m)
        if metricSwitch == true {
            bmiValue = weightVal / powf(heightVal, 2)
        //imperial: 703 * (w in lbs / h^2 in inches)
        } else {
            heightVal = heightVal * 12 //convert to inches
            bmiValue = ((703 * weightVal) / powf(heightVal, 2))
        }
        
        if bmiValue < 18.5 {
            health = String("Underweight")
        } else if bmiValue < 24.9 {
            health = String("Normal weight")
        } else if bmiValue < 29.9 {
            health = String("Overweight")
        } else {
            health = String("Obese")
        }
        return String(bmiValue) + String(" ") + String(health)
    }


}
