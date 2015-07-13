//
//  MapViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate
{

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!


    @IBOutlet weak var newTable: UITableView!


    
    var Dictionary = [[String: String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        textField1.delegate = self
        textField2.delegate = self
        newTable.delegate = self
        newTable.dataSource = self
        
        textField1.backgroundColor = UIColor.redColor()
        textField2.backgroundColor = UIColor.redColor()

        
        /*
        TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. 
        Accept keyboard input from the two text views. 
        When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. 
        The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
        
        
        
        TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
        
        TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
        */
    
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
  
    
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)

    
    }

  
    
    
    func keyboardWillShow(notification: NSNotification) {
        textField1.backgroundColor = UIColor.blueColor()
        textField2.backgroundColor = UIColor.blueColor()
        println("keyboard will show")
    }

    func keyboardWillHide(notification: NSNotification) {
        textField1.backgroundColor = UIColor.redColor()
        textField2.backgroundColor = UIColor.redColor()
        println("keyboard will hide")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Dictionary.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = newTable.dequeueReusableCellWithIdentifier("mapCellID", forIndexPath: indexPath) as! UITableViewCell
        
        let currentDictionary = Dictionary[indexPath.row]
        cell.textLabel?.text = currentDictionary["text1"]
        cell.detailTextLabel?.text = currentDictionary["text2"]
        
        
        return cell
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == textField1 {
            textField1.resignFirstResponder()
            textField2.becomeFirstResponder()
        } else {
            textField2.resignFirstResponder()
            
            Dictionary.append(["text1": textField1.text, "text2": textField2.text])
            
            newTable.reloadData()
            
            textField1.text = ""
            textField2.text = ""
        }
        
        return true
        
    }

}

