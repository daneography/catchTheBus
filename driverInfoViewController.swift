//
//  driverInfoViewController.swift
//  Pods
//
//  Created by Apple on 5/18/17.
//
//

import UIKit

class driverInfoViewController: UIViewController {
    var eta:busETAViewController? = nil
    
    @IBOutlet weak var label: UILabel!
    
    var wait: String = busETAViewController().people
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eta = busETAViewController()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    //

}
