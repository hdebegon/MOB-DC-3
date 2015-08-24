//
//  ViewController.swift
//  locateMe
//
//  Created by user on 8/5/15.
//  Copyright (c) 2015 Handy Debegon. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate
{

    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var currentLocationLabel: UILabel!
    
    let locationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        
        // Moves the specified subview (currentLocationLabel) so that it appears on top of its siblings.
        self.view.bringSubviewToFront(currentLocationLabel)
        
        currentLocationLabel.layer.borderColor = UIColor.blackColor().CGColor
        currentLocationLabel.layer.borderWidth = 1.0
        
    }
    
    
    @IBAction func findMe(sender: UIButton) {
        // Request permission when it's the first time
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.startUpdatingLocation()
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        
        
    }

    
    
    func locationManager(manager: CLLocationManager!, didUpdateToLocation newLocation: CLLocation!, fromLocation oldLocation: CLLocation!) {
        
        // function to center the map (zoom in)
        // centerMapOnUserLocationForMapView(mapView)
        
        
        CLGeocoder().reverseGeocodeLocation(newLocation,
            completionHandler: { (results, error) -> Void in
                if error != nil {
                    println("error")
                    return
                }
                if results.count > 0 {
                    let place = results[0] as! CLPlacemark
                    println("Location: \(place.thoroughfare) \(place.locality), \(place.administrativeArea) \(place.postalCode)")
                    self.currentLocationLabel.text = "\(place.thoroughfare) \(place.locality), \(place.administrativeArea) \(place.postalCode)"
                }
            })
        
        
        
        locationManager.stopUpdatingLocation()
        manager.stopUpdatingLocation()
        
    }
    
    /*
    func centerMapOnUserLocationForMapView(mapView: MKMapView) {
        if let coordinate = mapView.userLocation?.coordinate {
            // In here usserlocation is allowed and available
            let region = MKCoordinateRegionMakeWithDistance(coordinate, 600, 600)
            mapView.setRegion(region, animated: true)
        }
    }
    */


}

