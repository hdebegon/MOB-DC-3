////
////  ViewController.swift
////  Property List
////
////  Created by user on 7/22/15.
////  Copyright (c) 2015 Handy Debegon. All rights reserved.
////

import UIKit

class ViewController: UIViewController
{
    var movies = []

    @IBOutlet weak var movieNames: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var movies = movieNames.text
    }

    @IBAction func saveAction(sender: UIButton) {
    
        var movies = movieNames.text
    
    }

    
}
