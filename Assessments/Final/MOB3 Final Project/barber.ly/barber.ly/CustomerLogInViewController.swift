//
//  CustomerLogInViewController.swift
//  barber.ly
//
//  Created by user on 7/28/15.
//  Copyright (c) 2015 Handy Debegon. All rights reserved.
//

import UIKit

class CustomerLogInViewController: UIViewController
{

    @IBOutlet weak var custEmail: UITextField!
    @IBOutlet weak var custPass: UITextField!
    
    @IBOutlet weak var logInError: UILabel!
    
    @IBAction func logInButton(sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    // MARK: - Use Error Function
    override func shouldPerformSegueWithIdentifier(identifier: String!, sender: AnyObject!) -> Bool {
        if identifier == "customerLogIn" {
            
            if custEmail.text.isEmpty || custPass.text.isEmpty {
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
        logInError.text = "Log In is incomplete"
    }
    
}
