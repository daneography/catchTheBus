//
//  ViewController.swift
//  catchTheBus
//
//  Created by Apple on 5/17/17.
//  Copyright © 2017 TMCF. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userSelector: UISegmentedControl!
    @IBAction func userSubmit(_ sender: Any) {
        switch userSelector.selectedSegmentIndex {
        case 0:
            print("driver selected")
            //segue to driver
        case 1:
            print("rider selected")
            //segue to rider
        default:
            break
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

