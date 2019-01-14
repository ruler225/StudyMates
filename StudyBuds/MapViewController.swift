//
//  SecondViewController.swift
//  StudyBuds
//
//  Created by Youssef Mikhail on 2019-01-12.
//  Copyright © 2019 Youssef Mikhail. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    let locationManager = CLLocationManager()

    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        if CLLocationManager.authorizationStatus() != .authorizedWhenInUse {
            locationManager.requestWhenInUseAuthorization()
        }
        let waterloo = MKPointAnnotation()
        waterloo.title = "Math 135 - Exam Review"
        waterloo.coordinate = CLLocationCoordinate2D(latitude: 43.4707132, longitude: -80.5432824)
        mapView.addAnnotation(waterloo)
        let waterloo2 = MKPointAnnotation()
        waterloo2.title = "Computer Science Test 2"
        waterloo2.coordinate = CLLocationCoordinate2D(latitude: 43.4702772, longitude: -80.5440244)
        mapView.addAnnotation(waterloo2)
        
        let mcmaster = MKPointAnnotation()
        mcmaster.title = "COMPSCI 1MD3 - Python assignment"
        mcmaster.coordinate = CLLocationCoordinate2D(latitude: 43.2606548, longitude: -79.9187501)
        mapView.addAnnotation(mcmaster)
        
        mapView.showsUserLocation = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,
                                                  latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        view.endEditing(true)
    }
    

}

