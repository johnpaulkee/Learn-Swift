//
//  ViewController.swift
//  Persistant Storage
//
//  Created by John Paul Kee on 2014-12-06.
//  Copyright (c) 2014 jp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //NSUserDefaults.standardUserDefaults().setObject("JP", forKey: "myName")
        //NSUserDefaults.standardUserDefaults().synchronize()
        
        println(NSUserDefaults.standardUserDefaults().objectForKey("myName"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

