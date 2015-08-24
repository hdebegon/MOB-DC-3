//
//  BarberRegistrationViewController.swift
//  barber.ly
//
//  Created by user on 7/28/15.
//  Copyright (c) 2015 Handy Debegon. All rights reserved.
//

import UIKit

class BarberRegistrationViewController: UIViewController
{

    @IBOutlet weak var barberFirstName: UITextField!
    @IBOutlet weak var barberLastName: UITextField!
    @IBOutlet weak var barberPhone: UITextField!
    @IBOutlet weak var barberEmail: UITextField!
    @IBOutlet weak var barberPassword: UITextField!
    @IBOutlet weak var barberLicense: UITextField!
    
    
    @IBOutlet weak var barberErrorMessage: UILabel!
    
    @IBAction func barberRegisters(sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Use Error Function
    override func shouldPerformSegueWithIdentifier(identifier: String!, sender: AnyObject!) -> Bool {
        if identifier == "barberRegistrationComplete" {
            
            if barberFirstName.text.isEmpty || barberLicense.text.isEmpty || barberLastName.text.isEmpty || barberPhone.text.isEmpty || barberEmail.text.isEmpty || barberPassword.text.isEmpty {
                textErrorMessage()
                return false
            } else {
                return true
            }
        }
        
        // by default, transition
        return true
    }
    
    
    // MARK: - Error Function
    func textErrorMessage() {
            barberErrorMessage.text = "Please fill out all fields. Registration incomplete."
    }

}
