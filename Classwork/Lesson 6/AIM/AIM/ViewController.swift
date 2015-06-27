//
//  ViewController.swift
//  AIM
//
//  Created by user on 6/22/15.
//  Copyright (c) 2015 Handy Debegon. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var sexField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextFields()
        setupButtons()
        
       
    }
    
    
    func setupTextFields() {
        nameField.placeholder = "Name"
        ageField.placeholder = "Age"
        sexField.placeholder = "Sex"
        locationField.placeholder = "Location"
        nameField.textColor = UIColor.orangeColor()
        ageField.textColor = UIColor.blueColor()
        
        textFieldWithKeybord(nameField)
        textFieldWithKeybord(ageField)
        textFieldWithKeybord(sexField)
        textFieldWithKeybord(locationField)
    }
    
    
    func textFieldWithKeybord(textField: UITextField) {
        textField.keyboardType = (textField == ageField) ? UIKeyboardType.NumberPad : UIKeyboardType.ASCIICapable
        textField.textColor = (textField == sexField)  ? UIColor.redColor() : UIColor.blueColor()
    }
    
    func setupButtons() {
    
        clearButton.setTitle("Clear", forState: UIControlState.Normal)
        submitButton.setTitle("Submit", forState: UIControlState.Normal)
    }
    
    @IBAction func subitAction(sender: UIButton) {
    
    }
    
    @IBAction func clearAction(sender: UIButton) {
        nameField.text = nil
        ageField.text = nil
        sexField.text = nil
        locationField.text = nil
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showProfile" {
            let destinationVC = segue.destinationViewController as! ProfileViewController
            destinationVC.age = ageField.text
            destinationVC.name = nameField.text
            destinationVC.sex = sexField.text
            destinationVC.location = locationField.text
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

