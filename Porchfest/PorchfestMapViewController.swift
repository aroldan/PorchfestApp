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

    @IBOutlet weak var mapView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let camera = GMSCameraPosition.cameraWithLatitude(42.392927,
            longitude: -71.090794, zoom: 14.25) // somerville
        let mapView = GMSMapView.mapWithFrame(self.mapView.bounds, camera: camera)
        mapView.myLocationEnabled = true
        self.mapView.addSubview(mapView)
        mapView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(mapView: GMSMapView!, didChangeCameraPosition position: GMSCameraPosition!) {
        NSLog("LL: %f,%f Zoom is: %f", position.target.latitude, position.target.longitude, mapView.camera.zoom)
    }

}

