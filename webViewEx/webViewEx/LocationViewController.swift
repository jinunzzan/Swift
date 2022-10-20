//
//  LocationViewController.swift
//  webViewEx
//
//  Created by Eunchan Kim on 2022/10/18.
//

import UIKit
import CoreLocation
import CoreLocationUI
import MapKit

final class LocationViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    @IBOutlet weak var mapKit: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        mapKit.delegate = self
    }
    
    func checkLocation() {
        let AS: CLAuthorizationStatus
        if #available(iOS 14, *) {
            AS = locationManager.authorizationStatus
        } else {
            AS = CLLocationManager.authorizationStatus()
        }
        
        if CLLocationManager.locationServicesEnabled() {
            switch AS {
            case .notDetermined:
                locationManager.desiredAccuracy = kCLLocationAccuracyBest
                locationManager.requestWhenInUseAuthorization()
                locationManager.startUpdatingLocation()
            case .restricted, .denied:
                print("denied")
                // setting
            case .authorizedAlways:
                // 항상
                print("Always")
            case .authorizedWhenInUse:
                // 앱실행
                locationManager.startUpdatingLocation()
            @unknown default:
                print("default")
            }
        }
    }
    
    func getCurrentAddress(location: CLLocation) {
        let geoCoder: CLGeocoder = CLGeocoder()
        let location: CLLocation = location
        
        let locale = Locale(identifier: "Ko-kr")
        
        geoCoder.reverseGeocodeLocation(location, preferredLocale: locale) { (placemark, error) -> Void in
            
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // 위치접근이 성공했을경우
        if let cord = locations.last?.coordinate {
            print(cord.latitude, cord.longitude)
            getCurrentAddress(location: CLLocation(latitude: cord.latitude, longitude: cord.longitude))
            locationManager.startUpdatingLocation()
        }
    }
    
    
}
