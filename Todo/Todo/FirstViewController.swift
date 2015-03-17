//
//  FirstViewController.swift
//  Todo
//
//  Created by John Paul Kee on 2014-12-07.
//  Copyright (c) 2014 jp. All rights reserved.
//

import UIKit

var todoItems:[String] = []

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tasksTable:UITableView

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoItems.count
    }
   
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = todoItems[indexPath.row]
        return cell
    }
    
    override func viewWillAppear(animated: Bool) {
        tasksTable.reloadData()
    }


}

