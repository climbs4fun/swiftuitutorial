//
//  File.swift
//  Landmarks
//
//  Created by Brian Baker on 10/15/23.
//

import Foundation
import CoreLocation

class LocationDataManager : NSObject, CLLocationManagerDelegate {
   var locationManager = CLLocationManager()


   override init() {
      super.init()
      locationManager.delegate = self
   }


   // Location-related properties and delegate methods.
}

func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
    switch manager.authorizationStatus {
    case .authorizedWhenInUse:  // Location services are available.
        enableLocationFeatures()
        break
        
    case .restricted, .denied:  // Location services currently unavailable.
        disableLocationFeatures()
        break
        
    case .notDetermined:        // Authorization not determined yet.
       manager.requestWhenInUseAuthorization()
        break
        
    default:
        break
    }
}

func enableLocationFeatures() {
    var locationServicesEnabled = true
}

func disableLocationFeatures() {
    var locationServicesEnabled = true
}
