//
//  LocationData.swift
//  test
//
//  Created by Lorenzo Hernandez on 11/5/17.
//  Copyright © 2017 Lorenzo Hernandez. All rights reserved.
//

import Foundation

class LocationData: NSObject{
    private var lati: String?
    private var longi: String?
    
    init(lati: String, longi: String){
        self.lati = lati
        self.longi = longi
    }
    
    func setLati(latitude: String){
        self.lati = latitude
    }
    
    func setLongi(longitude: String){
        self.longi = longitude
    }
    
    func getLati() -> String{
        return self.lati!
    }
    
    func getLongi()->String{
        return self.longi!
    }
}
