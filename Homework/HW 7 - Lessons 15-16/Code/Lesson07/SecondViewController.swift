//
//  SecondViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var plistTextView: UITextView!
    
    var string = [String]()
    var slider = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let path = NSBundle.mainBundle().pathForResource("Root", ofType: "plist") {
            let fetchFromPlist = NSArray(contentsOfFile: path)
            string = fetchFromPlist as! [String]
            slider = fetchFromPlist as! [String]
        }

//        plistTextView.text = path
    }
}
