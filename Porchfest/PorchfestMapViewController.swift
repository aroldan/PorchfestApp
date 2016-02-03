//
//  PorchfestMapViewController
//  Porchfest
//
//  Created by Anthony Roldan on 1/30/16.
//  Copyright © 2016 Porchfest. All rights reserved.
//

import UIKit
import GoogleMaps

class PorchfestMapViewController: UIViewController, GMSMapViewDelegate {
    
    // use this js snippet to plunder
    // JSON.stringify(Drupal.settings.gmap.porchfest.markers.map(function(m) { return {lat:m.latitude, lon: m.longitude, t: m.text, name:m.markername}}));

    @IBOutlet weak var mapView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let camera = GMSCameraPosition.cameraWithLatitude(42.392927,
            longitude: -71.090794, zoom: 14.25) // somerville
        let mapView = GMSMapView.mapWithFrame(self.mapView.bounds, camera: camera)
        mapView.myLocationEnabled = true
        self.mapView.addSubview(mapView)
//        mapView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

