//
//  BandsStore.swift
//  Porchfest
//
//  Created by Anthony Roldan on 2/2/16.
//  Copyright © 2016 Porchfest. All rights reserved.
//

import Foundation
import Gloss

class BandsStore {
    
    let bands : [Band]
    
    init() {
        if let path = NSBundle.mainBundle().pathForResource("parsedBands", ofType: "json")
        {
            if let jsonData = NSData(contentsOfFile: path)
            {
                do {
                    let jsonResult = try NSJSONSerialization.JSONObjectWithData(jsonData, options: NSJSONReadingOptions.AllowFragments) as? JSON
                    if let bandsWrapped = jsonResult!["bands"] as? [JSON] {
                        guard let readBands = Band.modelsFromJSONArray(bandsWrapped)
                            else {
                                self.bands = []
                                return
                        }
                        self.bands = readBands
                        return
                    }
                } catch {
                    NSLog("Well that sucked")
                }
            }
        }
        self.bands = []
    }
}