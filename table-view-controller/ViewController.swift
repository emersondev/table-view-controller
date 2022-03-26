//
//  ViewController.swift
//  table-view-controller
//
//  Created by Emerson.Novais on 24/03/22.
//

import UIKit

class ViewController: UITableViewController {
    
    var data: [String] = ["Hotdog", "Pizza", "Hamburger"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellReuse = "cellReuse"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuse, for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = data[indexPath.row]
        cell.contentConfiguration = content
        return cell
     }
}

