//
//  LocationController.swift
//  Enso
//
//  Created by Leonardo Lee on 9/8/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

//Think about adding some Visit Monitoring features to Enso to make it even more attractive to comtemplative people.

import UIKit
import MapKit
import CoreLocation


//class LocationController: CLLocationManagerDelegate {
//    locationManager didVisit
//Utilizes CLVisit objects
//horizontal accuracy is good for wifi monitoring level accuracy.
//Make Locations retrieveable by metadata from PHAssets
//Arrival estimate : NSDate.distantFuture()
//}

//Need to fix this up.
class LocationController: NSObject, CLLocationManagerDelegate {
    var locationManager : CLLocationManager
    
    override init() {
        self.locationManager = CLLocationManager()
        super.init()
    }
    
    func locationManager(manager: CLLocationManager!, didVisit visit: CLVisit!) {
        //Implement code to take the CLVisit times and log out what was used and why.
    }
}