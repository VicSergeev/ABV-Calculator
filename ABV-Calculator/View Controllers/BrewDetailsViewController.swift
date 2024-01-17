//
//  BrewViewController.swift
//  ABV-Calculator
//
//  Created by Vic on 10.01.2024.
//

import UIKit

final class BrewDetailsViewController: UIViewController {
    
    @IBOutlet var brewImageView: UIImageView!
    @IBOutlet var abvLabel: UILabel!
    @IBOutlet var daysOfFermentationLabel: UILabel!
    @IBOutlet var brewTypeLabel: UILabel!
    @IBOutlet var brewInfoNavigationTitle: UINavigationItem!
    
    var brew: Brew!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        brewImageView.image = UIImage(named: brew.brewType)
        abvLabel.text = String(format: "%.2f", brew.avb) + "%"
        daysOfFermentationLabel.text = String(brew.daysOfFermentation)
        brewTypeLabel.text = brew.brewType
        brewInfoNavigationTitle.title = brew.title
    }
    
}
