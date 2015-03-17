//
//  SecondViewController.swift
//  Todo
//
//  Created by John Paul Kee on 2014-12-07.
//  Copyright (c) 2014 jp. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var toDoItem: UITextField!
    @IBAction func addItem(sender: AnyObject) {
        todoItems.append(toDoItem.text)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

}

