//
//  ViewController.swift
//  UsingGoogleMaps
//
//  Created by Im100ruv on 27/02/18.
//  Copyright © 2018 Im100ruv. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class ViewController: UIViewController {
    
//    var locationManager = CLLocationManager()
//    var currentLocation: CLLocation?
//    var mapView: GMSMapView!
//    var placesClient: GMSPlacesClient!
//    var zoomLevel: Float = 15.0
    
//    // An array to hold the list of likely places.
//    var likelyPlaces: [GMSPlace] = []
//    
//    // The currently selected place.
//    var selectedPlace: GMSPlace?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let camera = GMSCameraPosition.camera(withLatitude: 13.6558231, longitude: 79.4369599, zoom: 17.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 13.6558231, longitude: 79.4369599)
        marker.title = "YIIT"
        marker.snippet = "Tirupati"
        marker.map = mapView
        
//        locationManager = CLLocationManager()
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.requestAlwaysAuthorization()
//        locationManager.distanceFilter = 50
//        locationManager.startUpdatingLocation()
//        locationManager.delegate = self
//
//        placesClient = GMSPlacesClient.shared()
    }
}

//
//extension ViewController: CLLocationManagerDelegate {
//
//    // Handle incoming location events.
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        let location: CLLocation = locations.last!
//        print("Location: \(location)")
//
//        let camera = GMSCameraPosition.camera(withLatitude: location.coordinate.latitude,
//                                              longitude: location.coordinate.longitude,
//                                              zoom: zoomLevel)
//
//        if mapView.isHidden {
//            mapView.isHidden = false
//            mapView.camera = camera
//        } else {
//            mapView.animate(to: camera)
//        }
//
////        listLikelyPlaces()
//    }
//
//    // Handle authorization for the location manager.
//    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
//        switch status {
//        case .restricted:
//            print("Location access was restricted.")
//        case .denied:
//            print("User denied access to location.")
//            // Display the map using the default location.
//            mapView.isHidden = false
//        case .notDetermined:
//            print("Location status not determined.")
//        case .authorizedAlways: fallthrough
//        case .authorizedWhenInUse:
//            print("Location status is OK.")
//        }
//    }
//
//    // Handle location manager errors.
//    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
//        locationManager.stopUpdatingLocation()
//        print("Error: \(error)")
//    }
//}

