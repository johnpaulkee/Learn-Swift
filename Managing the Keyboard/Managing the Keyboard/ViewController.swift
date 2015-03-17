//
//  ViewController.swift
//  Managing the Keyboard
//
//  Created by John Paul Kee on 2014-12-06.
//  Copyright (c) 2014 jp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBAction func buttonPressed(sender: AnyObject) {
        label.text = textField.text
    }
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
            self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}


