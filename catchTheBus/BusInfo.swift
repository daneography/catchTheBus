//
//  BusInfo.swift
//  catchTheBus
//
//  Created by Apple on 5/18/17.
//  Copyright © 2017 TMCF. All rights reserved.
//

import Foundation
import SwiftyJSON

struct BusInfo {
    let latitude: Int
    let longitude: Int
    let route: Int
    let BusNumber: Int
    let stop: String
    
    init(json: JSON){
        self.latitude = 0
        self.longitude = 0
        self.route = 0
        self.BusNumber = 0
        self.stop = ""
    }
    
}
