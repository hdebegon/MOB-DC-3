//
//  MoviesAndMusicTableViewController.swift
//  Property List
//
//  Created by user on 7/22/15.
//  Copyright (c) 2015 Handy Debegon. All rights reserved.
//

import UIKit

class MoviesAndMusicTableViewController: UITableViewController
{
    var songs = [String]()
    var movies = [String]()
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fetchFromDefaults: AnyObject! = defaults.arrayForKey("movies")
        if let fetchFromDefaults = fetchFromDefaults as? [String] {
            movies = fetchFromDefaults
        }
        
        if let path = NSBundle.mainBundle().pathForResource("movieList", ofType: "plist") {
            let fetchFromPlist = NSArray(contentsOfFile: path)
            songs = fetchFromPlist as! [String]
        }
        
        
        tableView.reloadData()
    }
    

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? movies.count : songs.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Movies" : "Songs"
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("movieCell",
            forIndexPath: indexPath) as! UITableViewCell
        
        let sourceArray = indexPath.section == 0 ? movies : songs
        let movieName = sourceArray[indexPath.row]
        
        
        cell.textLabel?.text = movieName
        
        return cell
    }
   
    
}
    




