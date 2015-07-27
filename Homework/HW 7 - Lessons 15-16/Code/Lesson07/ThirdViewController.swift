//
//  ThirdViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var toDoThreeBox: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSTemporaryDirectory() + "advanced/advanced.json"
        
        if !NSFileManager().fileExistsAtPath(path) {
            var err:NSError?
            NSFileManager().createDirectoryAtPath(path, withIntermediateDirectories: true, attributes: nil, error: &err)
        }
        
        let jsonOutput = "{'states': {'california': {'population_millions' ': 38.3,'square_miles' : 163696,'percent_water' : 4.3}}}"
        
        var err:NSError?
        let result = jsonOutput.writeToFile(path, atomically: true, encoding: NSUTF8StringEncoding, error: &err)
        
        NSLog("We attempted to remove a file and our result was \(result)")

        // Do any additional setup after loading the view.
    }
}
