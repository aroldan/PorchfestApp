//
//  Band.swift
//  Porchfest
//
//  Created by Anthony Roldan on 2/2/16.
//  Copyright © 2016 Porchfest. All rights reserved.
//

import Foundation
import Gloss


struct Band : Decodable {
    
    let lat : Double
    let lon : Double
    let name : String
    let address : String
    
    init?(json: JSON) {
        guard let lat: Double = "lat" <~~ json
            else { return nil }
        self.lat = lat
        
        guard let lon: Double = "lon" <~~ json
            else { return nil }
        self.lon = lon
        
        guard let name: String = "band" <~~ json
            else { return nil }
        self.name = name
        
        guard let address: String = "address" <~~ json
            else { return nil }
        self.address = address
    }
    
}