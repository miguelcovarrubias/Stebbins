//
//  FirstViewController.swift
//  MapPractice
//
//  Created by Miguel Sanchez on 2/22/15.
//  Copyright (c) 2015 Miguel Sanchez. All rights reserved.
//

import UIKit
import MapKit

class FirstViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    var locationManager : CLLocationManager!
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager = CLLocationManager()
        locationManager.requestWhenInUseAuthorization()
        var centerCoordinate = CLLocationCoordinate2DMake(38.54192, -121.74994)
        var mapSpan = MKCoordinateSpanMake(0.00, 0.03)
        var mapRegion = MKCoordinateRegionMake(centerCoordinate, mapSpan)
        mapView.showsUserLocation = true
        
        mapView.setRegion(mapRegion, animated: true)
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

