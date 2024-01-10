//
//  BrewViewController.swift
//  ABV-Calculator
//
//  Created by Vic on 10.01.2024.
//

import UIKit

final class BrewViewController: UIViewController {
    
    @IBOutlet var brewImageView: UIImageView!
    @IBOutlet var abvLabel: UILabel!
    @IBOutlet var daysOfFermentationLabel: UILabel!
    @IBOutlet var brewTypeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func deleteCellAction(_ sender: UIButton) {
    }
}
