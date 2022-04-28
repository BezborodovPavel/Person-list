//
//  Person.swift
//  Person list
//
//  Created by Павел on 28.04.2022.
//

import Foundation

struct Person {
    
    let name: String
    let family: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(family) \(name)"
    }
    
    static let dataManager = DataManager()
    
    static func getPerson() -> Person? {
        
        guard let name = Person.dataManager.getUniqueName() else {return nil}
        guard let family = Person.dataManager.getUniqueFamily() else {return nil}
        guard let phone = Person.dataManager.getUniquePhone() else {return nil}
        guard let email = Person.dataManager.getUniqueEmail() else {return nil}

        let person = Person(name: name, family: family, phone: phone, email: email)
        return person
    }
}
