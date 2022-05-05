//
//  PersonSectionsListViewController.swift
//  Person list
//
//  Created by Павел on 28.04.2022.
//

import UIKit

class PersonSectionsListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let person = persons[section]
        let fullname = person.fullName
        return fullname
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let person = persons[indexPath.section]
        var cell = UITableViewCell()
        var content: UIListContentConfiguration
        
        if indexPath.row == 0 {
           
            cell = tableView.dequeueReusableCell(withIdentifier: "phone", for: indexPath)
            content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "phone.fill") // Указываю в коде, почемуто настройки картинки в ячейки через сториборд игнорируются
            content.text = person.phone

        } else {
            
            cell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath)
            content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "tray.fill")
            content.text = person.email
        }
        
        cell.contentConfiguration = content
        
        return cell
    }

}
