//
//  Developer.swift
//  ABV-Calculator
//
//  Created by Vic on 18.01.2024.
//

struct Developer {
    let name: String
    let lastname: String
    
    var fullName: String {
        "\(name) \(lastname)"
    }
    
    static func getDevNames() -> [Developer] {
        var devNames: [Developer] = []
        let devData = DeveloperDataStore.shared
        
        let names = devData.names
        let lastnames = devData.lastnames
        
        let iterationsCount = min(
            names.count,
            lastnames.count
        )
        
        for index in 0..<iterationsCount {
            let devName = Developer(
                name: names[index],
                lastname: lastnames[index]
            )
            
            devNames.append(devName)
        }
        return devNames
    }
}
