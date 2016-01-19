//
//  BlackMailListViewController.swift
//  BlackMail
//
//  Created by Regina Imhoff on 1/7/16.
//  Copyright © 2016 Regina Imhoff. All rights reserved.
//

import UIKit

class BlackMailListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let myFriends = ["Joanna", "Joyanna", "Jonathan", "Jinger", "Jennifer", "Josie", "Brooklyn"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myFriends.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel!.text = myFriends[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("friendListToFriendDetailSegue", sender: self)
    }
}
