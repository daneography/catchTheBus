//
//  Rider2ViewController.swift
//  catchTheBus
//
//  Created by Apple on 5/18/17.
//  Copyright © 2017 TMCF. All rights reserved.
//

import UIKit

class Rider2ViewController: UIViewController {

    @IBAction func unwindToRider2ViewController(_ segue: UIStoryboardSegue) {
        
        // for now, simply defining the method is sufficient.
        // we'll add code later
        
    }
    @IBAction func route(_ sender: Any) {
        performSegue(withIdentifier: "displayBusETA", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
