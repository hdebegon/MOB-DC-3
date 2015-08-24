//
//  BarberTableViewController.swift
//  barber.ly
//
//  Created by user on 7/29/15.
//  Copyright (c) 2015 Handy Debegon. All rights reserved.
//



import UIKit

class BarberTableViewController: UITableViewController {
    

}


/*
    
    var barbersFromPlist = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        // Fetch from plist
        if let path = NSBundle.mainBundle().pathForResource("Barber Options", ofType: "plist") {
            let fetchFromPlist = NSArray(contentsOfFile: path)
            barbersFromPlist = fetchFromPlist as! [String]
        }
        
        
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return barbersFromPlist.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Plist"
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("barberCell",forIndexPath: indexPath) as! UITableViewCell
        
        let sourceArray = barbersFromPlist
        let barberName = sourceArray[indexPath.row]
        
        
        cell.textLabel?.text = barberName
        
        return cell
    }
    

*/
