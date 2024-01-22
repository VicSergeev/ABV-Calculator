//
//  AboutViewController.swift
//  ABV-Calculator
//
//  Created by Vic on 10.01.2024.
//

import UIKit

final class AboutViewController: UIViewController {
    private var devIndex = 0
    private var developers = Developer.getDevNames()
    
    @IBOutlet var devNamesLabels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getNames()
    }
}

// MARK: - Private methods
private extension AboutViewController {
    func getNames() {
        for index in 0..<devNamesLabels.count {
            let dev = developers[devIndex]
            let labelIndex = devNamesLabels[index]
            labelIndex.text = dev.fullName
            devIndex += 1
        }
    }
}
