//
//  ModalViewController.swift
//  Lesson03
//
//  Created by user on 7/6/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    @IBOutlet weak var dismiss: UIButton!
    
    
    @IBAction func dismissButtonAction(sender: UIButton) {
        println("Dismiss")
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
