//
//  ViewController.swift
//  catchTheBus
//
//  Created by Apple on 5/17/17.
//  Copyright © 2017 TMCF. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController{



    @IBAction func userRider(_ sender: Any) {
        performSegue(withIdentifier: "displayRider", sender: self)
    }
    @IBAction func userDriver(_ sender: Any) {
        performSegue(withIdentifier: "displayDriver", sender: self)
    }
    @IBAction func unwindToListNotesViewController(_ segue: UIStoryboardSegue) {
        
        // for now, simply defining the method is sufficient.
        // we'll add code later
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


