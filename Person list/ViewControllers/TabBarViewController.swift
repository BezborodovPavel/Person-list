//
//  TabBarViewController.swift
//  Person list
//
//  Created by Павел on 28.04.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        getPersons()
    }
    
    func getPersons() {
        while let person = Person.getPerson() {
            persons.append(person)
        }
    }
}
