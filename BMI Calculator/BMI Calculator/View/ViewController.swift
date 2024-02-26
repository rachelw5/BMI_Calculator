//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Rachel on 2/25/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    var bmiLogic = BMILogic()
    
    var result = ""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func metric(_ sender: UISwitch) {
        bmiLogic.setSwitch(sender.isOn)
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        
        heightLabel.text = "Height: \(bmiLogic.getHeightVal(sender.value))"
        
        //heightLabel.text = "Height(ft): \(heightVal)"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        
        weightLabel.text = "Weight: \(bmiLogic.getWeightVal(sender.value))"
        
        // weightLabel.text = "Weight(lb): \(weightVal)"
    }
    //}
    
    @IBAction func calculate(_ sender: UIButton) {
        result = bmiLogic.calculateBMI()
        self.performSegue(withIdentifier: "toBMIResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toBMIResult" {
            let navigation = segue.destination as! BMIResultView
            navigation.result = result
        }
        
        
    }
}
