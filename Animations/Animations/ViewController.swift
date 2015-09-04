//
//  ViewController.swift
//  Animations
//
//  Created by Jason Wong on 2015-08-15.
//  Copyright © 2015 Jason Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var isAnimating = true;
    
    @IBOutlet var alienImage: UIImageView!
    
    
    @IBAction func updateImage(sender: AnyObject) {
        
        if isAnimating == true {
            timer.invalidate()
            isAnimating = false
            
        } else {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            isAnimating = true
        }
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
        
    
        
        
        
    }
    
    func doAnimation() {
        
        if (alienImage.image == UIImage(named: "frame1.png")){
            alienImage.image = UIImage(named: "frame2.png")
        } else if (alienImage.image == UIImage(named: "frame2.png")){
            alienImage.image = UIImage(named: "frame3.png")
        } else if (alienImage.image == UIImage(named: "frame3.png")){
            alienImage.image = UIImage(named: "frame4.png")
        } else if (alienImage.image == UIImage(named: "frame4.png")){
            alienImage.image = UIImage(named: "frame5.png")
        } else {
            alienImage.image = UIImage(named: "frame1.png")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    override func viewDidLayoutSubviews() {
        
        alienImage.frame = CGRectMake(100, 20, 0, 0)
        
        
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1) { () -> Void in
        
            self.alienImage.frame = CGRectMake(100, 20, 100, 200)
            
        }
    }
*/


}

