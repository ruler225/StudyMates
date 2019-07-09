//
//  DetailsViewController.swift
//  StudyBuds
//
//  Created by Youssef Mikhail on 2019-01-13.
//  Copyright © 2019 Youssef Mikhail. All rights reserved.
//

import UIKit
import MapKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let center = CLLocationCoordinate2D(latitude: 43.4702772, longitude: -80.5440244)
        var region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        mapView.setRegion(region, animated: true)
        let waterloo2 = MKPointAnnotation()
        waterloo2.title = "Computer Science Test 2"
        waterloo2.coordinate = CLLocationCoordinate2D(latitude: 43.4702772, longitude: -80.5440244)
        mapView.addAnnotation(waterloo2)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnClicked(_ sender: Any) {
        titleLabel.text = "Button Clicked"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
