//
//  ViewController.swift
//  Todoey
//
//  Created by Clay Martin on 11/8/18.
//  Copyright © 2018 Adaptive Technologies. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Find Mike", "Buy Eggos", "Destroy Demogorgan"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK - Tableview datasource methods

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        let item = itemArray[indexPath.row]
        cell.textLabel?.text = item
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    //MARK - Tableview delegate methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        let cell = tableView.cellForRow(at: indexPath)
        if cell?.accessoryType == .checkmark {
            cell?.accessoryType = .none
        }else {
            cell?.accessoryType = .checkmark
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

