//
//  DataStore.swift
//  ABV-Calculator
//
//  Created by Vic on 05.01.2024.
//

final class DataStore {
    
    static let shared = DataStore()
    
    let titles = [
        "Светлое пиво",
        "Темное пиво",
        "Яблочный сидр",
        "Грушевый сидр",
        "Красное вино",
        "Белое вино"
    ]
    
    let brewTypes = [
        "пиво",
        "пиво",
        "сидр",
        "сидр",
        "вино",
        "вино"
    ]
    
    let originalGravity = [
        1.080,
        1.050,
        1.060,
        1.070,
        1.120,
        1.140
    ]
    
    let finalGravity = [
        1.011,
        1.010,
        1.021,
        1.022,
        1.001,
        1.021
    ]
    
    let daysOfFermentation = [
        18,
        25,
        36,
        42,
        121,
        176
    ]
    
    private init() {}
}

final class DeveloperDataStore {
    static let shared = DeveloperDataStore()
    
    let names = [
        "Viktor",
        "John",
        "Mason"
    ]
    let lastnames = [
        "Sergeev",
        "Smith",
        "Johnson"
    ]
    
    private init() {}
}
