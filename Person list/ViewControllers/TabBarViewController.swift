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
        setupViewControllers()
    }
    
    private func getPersons() {
        while let person = Person.getPerson() {
            persons.append(person)
        }
    }

    private func setupViewControllers() {

        viewControllers?.forEach({ currentVC in
            if let navigationVC = currentVC as? UINavigationController {
                navigationVC.viewControllers.forEach { vcFromNavigationVC in
                    if let personListVC = vcFromNavigationVC as? PersonListViewController {
                        personListVC.persons = persons
                    }
                }
            } else if let personSectionVC = currentVC as? PersonSectionsListViewController {
                personSectionVC.persons = persons
            }
        })
        
    }

}
