//
//  Brew.swift
//  ABV-Calculator
//
//  Created by Vic on 10.01.2024.
//

import Foundation

struct Brew {
    let title: String
    let brewType: String
    let initialDate: String
    let finalDate: String
    let originalGravity: Double
    let finalGravity: Double
    
    var avb: Double {
        (originalGravity - finalGravity) * 131.25
    }
    
    var daysOfFermentation: String {
        ""
        // расчет дней между датами
    }
}
