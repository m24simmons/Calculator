//
//  ViewController.swift
//  Calculator
//
//  Created by Student on 7/15/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentGradeTextFeild: UITextField!
    
    
    @IBOutlet weak var desiredGradeTextField: UITextField!
    
    
    @IBOutlet weak var percentageTextField: UITextField!
    
    
    @IBAction func calculateButton(_ sender: Any) {
        
        let currentGrade = Double(currentGradeTextFeild.text!)
        
        let desiredGrade = Double(desiredGradeTextField.text!)
        
        let percentage = Double(percentageTextField.text!)
        let oneHundredPercent = 100.0
        
        let percentOfGrade = Double(oneHundredPercent - percentage!)/100.0
        
        let gradeNeededOnFinal = (desiredGrade! - (percentOfGrade * currentGrade!))/percentage!
        
        finalGradeLabel.text = "You need a \(gradeNeededOnFinal * 100)%"
        
    }
    
    
    @IBOutlet weak var finalGradeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

