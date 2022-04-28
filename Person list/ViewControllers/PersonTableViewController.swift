//
//  PersonTableViewController.swift
//  Person list
//
//  Created by Павел on 28.04.2022.
//

import UIKit

class PersonTableViewController: UITableViewController {
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullName
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        var content: UIListContentConfiguration
        
        if indexPath.row == 0 {
           
            cell = tableView.dequeueReusableCell(withIdentifier: "phone", for: indexPath)
            content = cell.defaultContentConfiguration()
            content.text = "Phone: \(person.phone)"

        } else {
            
            cell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath)
            content = cell.defaultContentConfiguration()
            content.text = "Email: \(person.email)"
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
}
