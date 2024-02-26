//
//  BMIResultView.swift
//  BMI Calculator
//
//  Created by Rachel on 2/25/24.
//

import UIKit

class BMIResultView: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var result = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "BMI result: \(result)"

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backPressed(_ sender: UIButton) {
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
