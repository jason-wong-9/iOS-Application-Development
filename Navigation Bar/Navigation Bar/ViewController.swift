//
//  ViewController.swift
//  Navigation Bar
//
//  Created by Jason Wong on 2015-08-14.
//  Copyright © 2015 Jason Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var timer = NSTimer()
    
    var time = 0
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func startButton(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButton(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func resetButton(sender: AnyObject) {
        timer.invalidate()
        
        time = 0
        
        timerLabel.text = "0"
    }
    
    func result() {
        
        time++
        
        timerLabel.text = String(time)
        
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

