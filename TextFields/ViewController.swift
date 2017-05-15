//
//  ViewController.swift
//  TextFields
//
//  Created by Jason on 11/11/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController, UITextFieldDelegate

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Text Field Delegate objects
    
    let zipCodeText = ZipCodeTextFieldDelegate()
    let cashText = CashTextFieldDelegate()

    // MARK: Outlets
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var lockSwitch: UISwitch!

    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        // Set the three delegates
        self.textField1.delegate = self.zipCodeText
        self.textField2.delegate = self.cashText
        self.textField3.delegate = self
        
        self.lockSwitch.setOn(false, animated: false)
    }
    
    // MARK: Text Field Delegate Methods
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return self.lockSwitch.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
    // Mark: Actions
    
    @IBAction func toggleTheTextEditor(_ sender: AnyObject) {
        if !(sender as! UISwitch).isOn {
            self.textField3.resignFirstResponder()
        }

    }

}




