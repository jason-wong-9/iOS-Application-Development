//
//  ViewController.swift
//  Is It Prime
//
//  Created by Jason Wong on 2015-08-14.
//  Copyright © 2015 Jason Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func isItPrime(sender: AnyObject) {
        if let number = Int(numberTextField.text!) {
            var isPrime = true;
            
            if number == 1 {
                isPrime = false
            }else if number == 2 {
                isPrime = true
            } else {
                for var i = 2; i < number ; i++ {
                    if number % i == 0 {
                        isPrime = false
                    }
                }
            }
            if isPrime {
                resultLabel.text = "\(number) is Prime!"
            } else {
                resultLabel.text = "\(number) is not prime!"
            }
        } else {
            resultLabel.text = "Please enter a whole number"
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

