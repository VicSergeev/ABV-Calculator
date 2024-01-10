//
//  CalcViewController.swift
//  ABV-Calculator
//
//  Created by Vic on 10.01.2024.
//

import UIKit

final class CalcViewController: UIViewController {
    
    @IBOutlet var originalGravityTextField: UITextField!
    @IBOutlet var finalGravityTextField: UITextField!
    @IBOutlet var resultTextField: UITextField!
    
    // вычисление результата
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultTextField.isEnabled = false
    }
    
    @IBAction func getResultAction(_ sender: UIButton) {
    }
    
    @IBAction func clearAction(_ sender: UIButton) {
        originalGravityTextField.text = ""
        finalGravityTextField.text = ""
        resultTextField.text = ""
    }
    
}
