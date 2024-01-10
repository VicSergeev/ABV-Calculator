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
    
    // дэйт пикера в курсе еще не было, можно заменить на единственное поле, в котором пользователь сам пишет количество дней
    @IBOutlet var beginFermentationDatePicker: UIDatePicker!
    @IBOutlet var endFermentationDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func discardAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
}
