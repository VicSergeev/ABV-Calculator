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
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var resultView: UIView!
    
    private var originalGravity = 0.0
    private var finalGravity = 0.0
    private var result = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultView.layer.cornerRadius = 3
    }
    
    @IBAction func getResultAction(_ sender: UIButton) {
        
        if originalGravityTextField.text == "" {
            showAlert(withTitle: "Ошибка", andMessage: "Введите начальную плотность")
        } else if finalGravityTextField.text == "" {
            showAlert(withTitle: "Ошибка", andMessage: "Введите конечную плотность")
        } else {
            makeCalculation()
        }
        view.endEditing(true)
    }
    
    @IBAction func clearAction(_ sender: UIButton) {
        originalGravityTextField.text = ""
        finalGravityTextField.text = ""
        resultLabel.text = "Результат"
    }
    
}

// MARK: - Private Methods
private extension CalcViewController {
    
    func makeCalculation() {
        if let inputOG = originalGravityTextField.text, !inputOG.isEmpty {
            originalGravity = Double(inputOG) ?? 0.0
        }
        if let inputFG = finalGravityTextField.text, !inputFG.isEmpty {
            finalGravity = Double(inputFG) ?? 0.0
        }
        
        result = (originalGravity - finalGravity) * 131.25
        resultLabel.text = "\(String(format: "%.2f", result)) %"
    }
    
    func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}
