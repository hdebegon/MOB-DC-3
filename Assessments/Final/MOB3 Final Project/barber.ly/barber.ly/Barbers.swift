//
//  Barbers.swift
//  barber.ly
//
//  Created by user on 8/21/15.
//  Copyright (c) 2015 Handy Debegon. All rights reserved.
//

import MapKit

class Barbers: NSObject, MKAnnotation {
    var name: String?
    var specialty: String?
    var latitude: Double
    var longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}
