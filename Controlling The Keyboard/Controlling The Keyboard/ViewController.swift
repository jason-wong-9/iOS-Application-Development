//
//  ViewController.swift
//  Controlling The Keyboard
//
//  Created by Jason Wong on 2015-08-14.
//  Copyright © 2015 Jason Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var inputTextField: UITextField!
    @IBAction func button(sender: AnyObject) {
        resultLabel.text = inputTextField.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.inputTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
        
        
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

