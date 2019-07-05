//
//  MenuController.swift
//  Twitter-Slide-Out
//
//  Created by Rishabh Raj on 01/07/19.
//  Copyright © 2019 Rishabh Raj. All rights reserved.
//

import UIKit

class MenuController : UITableViewController {
    
    fileprivate let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = .blue
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = "Menu Row:\(indexPath.item)"
        return cell
    }
    
}
