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
    var people: String = "No"
    @IBAction func hereNow(_ sender: Any) {
        people = "Yes"
        print(people)
        
    }
    
    
    @IBOutlet weak var stopInput: UITextField!
    @IBOutlet weak var etaLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var routeNumberPicker: UIPickerView!
    let selectedRouteNumber = ["71","102", "191"]
    //////////////////////////////////////
    //////////////////////////////////////
    
    @IBAction func imHere(_ sender: Any) {
        if stopInput.text == "525"{
            etaLabel.text = "5 minutes"
        }
        else if stopInput.text == "535"{
            etaLabel.text = "3 minutes"
        }
        else if stopInput.text == "125"{
            etaLabel.text = "8 minutes"
        }
        else if stopInput.text == "625"{
            etaLabel.text = "Delayed use Bus 2"
        }
    }
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set initial location in Atlanta
        let initialLocation = CLLocation(latitude: 33.773605, longitude: -84.36543)
        
        centerMapOnLocation(location: initialLocation)
        
        //bustop.title = "525"
        //bustop.cooordinate = CLL.....
                    //= MKPointAnnotation()
        let busStop1 =  MKPointAnnotation()
        busStop1.title="525"
        busStop1.coordinate = CLLocationCoordinate2D(latitude : 33.7737999, longitude : -84.362218)
        mapView.addAnnotation(busStop1)
        
        let busStop2 =  MKPointAnnotation()
        busStop2.title="535"
        busStop2.coordinate = CLLocationCoordinate2D(latitude : 33.773605, longitude : -84.363679)
        mapView.addAnnotation(busStop2)
        
        let busStop3 =  MKPointAnnotation()
        busStop3.title="125"
        busStop3.coordinate = CLLocationCoordinate2D(latitude : 33.773355, longitude : -84.365138)
        mapView.addAnnotation(busStop3)
        
        let busStop4 =  MKPointAnnotation()
        busStop4.title="625"
        busStop4.coordinate = CLLocationCoordinate2D(latitude : 33.778995, longitude : -84.364982)
        mapView.addAnnotation(busStop4)
        
        
        
    
    
    
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
     //           let firstBus = longitude["LONGITUDE"]
                
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
