//
//  NewBrewViewController.swift
//  ABV-Calculator
//
//  Created by Vic on 10.01.2024.
//

import UIKit

final class NewBrewViewController: UIViewController {
    
    @IBOutlet var brewTitleTextField: UITextField!
    @IBOutlet var originalGravityTextField: UITextField!
    @IBOutlet var finalGravityTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func discardAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
}
