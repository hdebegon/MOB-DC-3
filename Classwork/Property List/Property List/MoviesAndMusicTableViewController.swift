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

    var movies = [String]()
    var songs = [String]()
    let cellID = "hdID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerClass(UITableView.self, forHeaderFooterViewReuseIdentifier: cellID)
        movies = ["Kris", "Rashod", "Roy", "Dylan"]
        songs = ["Apple", "Microsoft", "Google"]
        
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 2
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let rows = (section == 0) ? movies.count : songs.count
        
        return rows
    }

    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return (section == 0) ? "movies" : "songs"
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellID, forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = (indexPath == 0) ? movies[indexPath.row] : songs[indexPath.row]
        
        return cell
    }
    
    
}
    




