//
//  Brew.swift
//  ABV-Calculator
//
//  Created by Vic on 10.01.2024.
//

struct Brew {
    let title: String
    let brewType: String
    let originalGravity: Double
    let finalGravity: Double
    let daysOfFermentation: Int
    var brewImage: String {
        "\(brewType)"
    }
    var avb: Double {
        (originalGravity - finalGravity) * 131.25
    }
    
    
    static func getBrewList() -> [Brew] {
        var brewList: [Brew] = []
        let dataStore = DataStore.shared
        
        let titles = dataStore.titles
        let brewTypes = dataStore.brewTypes
        let originalGravity = dataStore.originalGravity
        let finalGravity = dataStore.finalGravity
        let daysOfFermentation = dataStore.daysOfFermentation
        
        let iterationsCount = min(
            titles.count,
            brewTypes.count,
            originalGravity.count,
            finalGravity.count,
            daysOfFermentation.count
        )
        
        for index in 0..<iterationsCount {
            let brew = Brew(
                title: titles[index],
                brewType: brewTypes[index],
                originalGravity: originalGravity[index],
                finalGravity: finalGravity[index],
                daysOfFermentation: daysOfFermentation[index]
            )
            
            brewList.append(brew)
        }
        
        return brewList
    }
}
