//
//  ViewController.swift
//  Where Am I
//
//  Created by Jason Wong on 2015-08-16.
//  Copyright © 2015 Jason Wong. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet var latitude: UILabel!
    @IBOutlet var longitude: UILabel!
    @IBOutlet var course: UILabel!
    @IBOutlet var speed: UILabel!
    @IBOutlet var attitude: UILabel!
    @IBOutlet var address: UILabel!
    
    
    var manager:CLLocationManager!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        manager = CLLocationManager()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations)
        var userLocation:CLLocation = locations[0]
        
        self.latitude.text = String(userLocation.coordinate.latitude)
        
        self.longitude.text = String(userLocation.coordinate.longitude)
        
        self.course.text = String(userLocation.course)
        
        self.speed.text = String(userLocation.speed)
        
        self.attitude.text = String(userLocation.altitude)
        
        CLGeocoder().reverseGeocodeLocation(userLocation) { (placemarks, error) -> Void in
            
            if (error != nil){
                print(error)
            } else {
                
                if let p:CLPlacemark = CLPlacemark(placemark: placemarks![0]) {
                    
                    var subThoroughfare = ""
                    
                    var thoroughfare = ""
                    
                    var subLocality = ""
                    
                    var adminArea = ""
                    
                    var postalCode = ""
                    
                    var country = ""
                    
                    if p.thoroughfare != nil {
                        
                        thoroughfare = p.thoroughfare!
                        
                    }
                    
                    if p.subThoroughfare != nil {
                        
                        subThoroughfare = p.subThoroughfare!
                        
                    }
                    
                    if p.subLocality != nil {
                        
                        subLocality = p.subLocality!
                        
                    }
                    
                    if p.administrativeArea != nil {
                        
                        adminArea = p.administrativeArea!
                        
                    }
                    
                    if p.postalCode != nil {
                        
                        postalCode = p.postalCode!
                        
                    }
                    
                    if p.country != nil {
                        
                        country = p.country!
                        
                    }
                    
                    self.address.text = " \(subThoroughfare) \(thoroughfare) \n \(subLocality) \n \(adminArea) \n \(postalCode) \n \(country)"
                    
                
                    
                }
                
            }
            
            
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

