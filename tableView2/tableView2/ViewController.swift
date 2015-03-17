//
//  ViewController.swift
//  tableView2
//
//  Created by John Paul Kee on 2014-12-06.
//  Copyright (c) 2014 John Paul Kee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let array = ["jp", "nicole", "keith", "magdelene"]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

