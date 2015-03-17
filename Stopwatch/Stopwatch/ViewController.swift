//
//  ViewController.swift
//  Stopwatch
//
//  Created by John Paul Kee on 2014-12-04.
//  Copyright (c) 2014 John Paul Kee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var timer = NSTimer()
    
    @IBOutlet weak var time: UILabel!
  
    @IBAction func playButton(sender: AnyObject) {
         timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButton(sender: AnyObject) {
        timer.invalidate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func resetButton(sender: AnyObject) {
        timer.invalidate()
        count = 0
        time.text = "0"
    }
    func result() {
        count++
        time.text = String(count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

