//
//  ViewController.swift
//  Location Alaram
//
//  Created by Josyula Gopala Krishna on 14/06/16.
//  Copyright © 2016 Josyula Gopala Krishna. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation



class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var mapView: MKMapView!

    let regionRadius: CLLocationDistance = 1000
    var locationManager: CLLocationManager!


    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

