//
//  ListOfPersonViewController.swift
//  HomeWork6
//
//  Created by Наташа Лемешевская on 12/1/19.
//  Copyright © 2019 Наташа Лемешевская. All rights reserved.
//

import UIKit

class ListOfPersonViewController: UITableViewController {
    
    private var persons = Person.listOfPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    private func getCellsArray(index: IndexPath) -> [String]{
        let groupOfCell = [persons[index.section].email, persons[index.section].phone]
        return groupOfCell
    }
    

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].name + " " + persons[section].surname
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    // MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        cell.textLabel?.text = getCellsArray(index: indexPath)[indexPath.row]
        return cell
    }
}
