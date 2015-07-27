////
////  ViewController.swift
////  Property List
////
////  Created by user on 7/22/15.
////  Copyright (c) 2015 Handy Debegon. All rights reserved.
////

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{

    @IBOutlet weak var movieNames: UITextField!
    

    let defaults = NSUserDefaults.standardUserDefaults()
    var movies = [String]() {
        didSet {

        }
    }
    
    override func viewWillAppear(animated: Bool) {
        movies = [String]()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        view.endEditing(true)
        if movieNames.text != "" {
            movies.append(movieNames.text)
        }
        
        movieNames.text = ""
        
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "movieList" {
            defaults.setObject(movies, forKey: "movies")
        }
    }
    
}
