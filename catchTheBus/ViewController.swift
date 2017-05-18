//
//  ViewController.swift
//  catchTheBus
//
//  Created by Apple on 5/17/17.
//  Copyright © 2017 TMCF. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func userRider(_ sender: Any) {
        performSegue(withIdentifier: "displayRider", sender: self)
    }
    @IBAction func userDriver(_ sender: Any) {
        performSegue(withIdentifier: "displayDriver", sender: self)
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


