//
//  busETAViewController.swift
//  catchTheBus
//
//  Created by Apple on 5/18/17.
//  Copyright © 2017 TMCF. All rights reserved.
//

import UIKit
import Alamofire
import MapKit


class busETAViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate{
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var routeNumberPicker: UIPickerView!
    @IBOutlet weak var busStopPicker: UIPickerView!
    let selectedRouteNumber = ["71","102", "191"]
    
    //////////////////////////////////////
    //////////////////////////////////////
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set initial location in Atlanta
        let initialLocation = CLLocation(latitude: 33.748995, longitude: -84.387982)
        
        centerMapOnLocation(location: initialLocation)
    }
    
    let regionRadius : CLLocationDistance = 1000
    
    func centerMapOnLocation(location : CLLocation){
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
        
        mapView.setRegion(coordinateRegion, animated: true)
        
    
        routeNumberPicker.delegate = self
        routeNumberPicker.dataSource = self
    }
    //////////////////////////////////////
    //////////////////////////////////////
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return selectedRouteNumber.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return selectedRouteNumber[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(selectedRouteNumber[row])
        let apiToPrepare = "http://developer.itsmarta.com/BRDRestService/RestBusRealTimeService/GetBusByRoute/"
        let apiToContact = (apiToPrepare + selectedRouteNumber[row])
        Alamofire.request(apiToContact).validate().responseJSON(){ response in
            if let JSON = response.result.value {
                print("It's Coming")
                print("JSON: \(JSON)")
                
            }
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
