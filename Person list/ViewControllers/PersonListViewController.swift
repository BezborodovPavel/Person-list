//
//  PersonListViewController.swift
//  Person list
//
//  Created by Павел on 28.04.2022.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    var persons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarVC = tabBarController as! TabBarViewController //Нужно ли здесь делать проверку и если проверка не пройдет то что делать, закрывать приложение?
        persons = tabBarVC.persons
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {      
         persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        content.text = person.fullName

        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let personVC = segue.destination as? PersonTableViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        personVC.person = persons[indexPath.row]
        
    }
}
