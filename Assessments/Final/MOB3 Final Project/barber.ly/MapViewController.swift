//
//  MapViewController.swift
//  barber.ly
//
//  Created by user on 8/19/15.
//  Copyright (c) 2015 Handy Debegon. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class MapViewController: UIViewController, CLLocationManagerDelegate
{
    
    
    @IBOutlet weak var myLocationLabel: UILabel!
    @IBOutlet weak var barberMap: MKMapView!
    
    let locationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let annotations = getMapAnnotations()
        // Add mappoints to Map
        barberMap.addAnnotations(annotations)
        
        locationManager.delegate = self
        
        // Request permission when it's the first time
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.startUpdatingLocation()
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        
        // - Zoom to region function
        zoomToRegion()
    }
    
    @IBAction func findBarbers(sender: UIButton) {
    }
    
    
    // MARK: - Location Manager
    func locationManager(manager: CLLocationManager!, didUpdateToLocation newLocation: CLLocation!, fromLocation oldLocation: CLLocation!) {
        
        // MARK: - Display current location on LABEL
        CLGeocoder().reverseGeocodeLocation(newLocation,
            completionHandler: { (results, error) -> Void in
                if error != nil {
                    println("error")
                    return
                }
                if results.count > 0 {
                    let place = results[0] as! CLPlacemark
                    self.myLocationLabel.text = "\(place.subThoroughfare) \(place.thoroughfare) \(place.locality), \(place.administrativeArea) \(place.postalCode)"
                }
        })
        locationManager.stopUpdatingLocation()
        manager.stopUpdatingLocation()
    }

    
    //MARK:- Zoom to region
    func zoomToRegion() {
        
        let location = CLLocationCoordinate2D(latitude: 38.9048542, longitude: -77.0338118)
        
        let region = MKCoordinateRegionMakeWithDistance(location, 500.0, 500.0)
        
        barberMap.setRegion(region, animated: true)

    }
    
    
    //MARK:- Annotations
    func getMapAnnotations() -> [Barbers] {
        var annotations:Array = [Barbers]()
    
        //load plist file
        var barbers: NSArray?
        if let path = NSBundle.mainBundle().pathForResource("Barber Options", ofType: "plist") {
            barbers = NSArray(contentsOfFile: path)
        }
    
        //iterate and create annotations
        if let items = barbers {
            for item in items {
                let lat = item.valueForKey("latitude") as! Double
                let long = item.valueForKey("longitude")as! Double
                let annotation = Barbers(latitude: lat, longitude: long)
                annotation.name = item.valueForKey("name") as? String
                annotation.specialty = item.valueForKey("specialty") as? String
                annotations.append(annotation)
            }
        }
    
        return annotations
    }
}

