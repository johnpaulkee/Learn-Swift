//
//  ViewController.swift
//  is-it-prime
//
//  Created by John Paul Kee on 2014-12-02.
//  Copyright (c) 2014 John Paul Kee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var numberText: UITextField!
    @IBAction func buttonPressed(sender: AnyObject) {
        var isPrime = true
        var Integer = numberText.text.toInt()
        if (Integer != nil) {
            if (Integer<1) {
                message.text = "Please enter a positive number"
            } else {
                if (Integer == 1) {
                    message.text = "1 is not a prime number"
                } else {
                    for var i = 2; i<Integer; ++i {
                        if ((Integer! % i) == 0) {
                            // Number is not prime
                            isPrime = false
                        }
                    }
                    
                    if (isPrime == true) {
                        message.text = "That number is prime!"
                    } else {
                        message.text = "That number is not prime!"
                    }
                }
            }
        } else {
            message.text = "Please enter a number"
        }
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

