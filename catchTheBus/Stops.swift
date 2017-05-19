//
//  Stops.swift
//  catchTheBus
//
//  Created by Apple on 5/19/17.
//  Copyright © 2017 TMCF. All rights reserved.
//

import Foundation
import MapKit

class Stops: NSObject, MKAnnotation{

    @IBOutlet var mapView: MKMapView!

    
    let title : String?
    var coordinate : CLLocationCoordinate2D
    
    init(title : String, coordinate : CLLocationCoordinate2D){
        
        self.title = title
        self.coordinate = coordinate
        
        super.init()
    }
  
    
    
}
