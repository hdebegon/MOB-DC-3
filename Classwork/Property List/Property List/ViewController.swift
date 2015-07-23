//
//  ViewController.swift
//  Property List
//
//  Created by user on 7/22/15.
//  Copyright (c) 2015 Handy Debegon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


//    let counterID = "counterID"
//    let defaults = NSUserDefaults.standardUserDefaults()
//    
//    var counter = 0 {
//        willSet {
//            println("Previous Value \(counter)")
//        }
//        
//        didSet {
//            println("New Value \(counter)")
//            movieNames.text = "\(counter)"
//            
//            defaults.setInteger(counter, forKey: counterID)
//            defaults.synchronize()
//        }
//    }
//    
//    @IBOutlet weak var movieNames: UITextField!
//
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        counter = defaults.integerForKey(counterID)
//    }
//    
//    @IBAction func buttonAction(sender: AnyObject) {
//        counter++
//    }
    

    let favoriteSongs = NSBundle.mainBundle().pathForResource("Songs", ofType: "plist")
    
    if let favoriteSongs = favoriteSongs {
        let songs = NSArray(contentsOfFile: favoriteSongs)
        println(songs)
    }
        
    

}

