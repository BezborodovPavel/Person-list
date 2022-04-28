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
    
    static func getPerson() -> Person? {
        
        let dataManager = DataManager()
        
        guard let name = dataManager.getUniqueName() else {return nil}
        guard let family = dataManager.getUniqueEmail() else {return nil}
        guard let phone = dataManager.getUniquePhone() else {return nil}
        guard let email = dataManager.getUniqueEmail() else {return nil}

        let person = Person(name: name, family: family, phone: phone, email: email)
        return person
    }
}
