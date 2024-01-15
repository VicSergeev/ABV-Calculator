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
    
    private var og = 0.0
    private var fg = 0.0
    private var result = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultTextField.isEnabled = false
    }
    
    @IBAction func getResultAction(_ sender: UIButton) {
        
        if originalGravityTextField.text == "" {
            showAlert(withTitle: "Ошибка", andMessage: "Введите начальную плотность")
        } else if finalGravityTextField.text == "" {
            showAlert(withTitle: "Ошибка", andMessage: "Введите конечную плотность")
        } else {
            makeCalculation()
        }
    }
    
    @IBAction func clearAction(_ sender: UIButton) {
        originalGravityTextField.text = ""
        finalGravityTextField.text = ""
        resultTextField.text = ""
    }
    
}


private extension CalcViewController {
    
    func makeCalculation() {
        if let inputOG = originalGravityTextField.text, !inputOG.isEmpty {
            og = Double(inputOG) ?? 0.0
        }
        if let inputFG = finalGravityTextField.text, !inputFG.isEmpty {
            fg = Double(inputFG) ?? 0.0
        }
        
        result = (og - fg) * 131.25
        resultTextField.text = "\(String(format: "%.2f", result)) %"
    }
    
    func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}
