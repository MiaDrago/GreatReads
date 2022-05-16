//
//  MapViewController.swift
//  GreatReads
//
//  Created by Maggie O'Brien on 4/28/22.
//

import UIKit
import MapKit

class MapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    var currentLocation: CLLocation!
    var books: [MKMapItem] = []
    var initialRegion: MKCoordinateRegion!
    var isInitialLoad = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        mapView.delegate = self
        mapView.showsUserLocation = true
    
    }
    //MARK: Setup
    func mapViewDidFinishLoadingMap(_ mapView: MKMapView) {
        if isInitialLoad {
            initialRegion = MKCoordinateRegion(center: mapView.centerCoordinate, span: mapView.region.span)
            isInitialLoad = false } }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        currentLocation = locations[0] }
    
    //MARK: Searching
    @IBAction func searchPressed(_ sender: UIButton) {
        let request = MKLocalSearch.Request()
        
        request.naturalLanguageQuery = "Library"
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        request.region = MKCoordinateRegion(center: currentLocation.coordinate, span: span)
        let search = MKLocalSearch(request: request)
        
        search.start { myResponse, Error in
            guard let response = myResponse else {return}
            for mapItem in response.mapItems {
                self.books.append(mapItem)
                let annotation = MKPointAnnotation()
                annotation.coordinate = mapItem.placemark.coordinate
                annotation.title = mapItem.name
                self.mapView.addAnnotation(annotation)
                
            } } }
    
    //MARK: Zoom
    @IBAction func zoomIn(_ sender: UIBarButtonItem) {
        let mySpan = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let myCenter = currentLocation.coordinate
        let myRegion = MKCoordinateRegion(center: myCenter, span: mySpan)
        mapView.setRegion(myRegion, animated: true) }
    
    @IBAction func zoomOut(_ sender: UIBarButtonItem) {
        mapView.setRegion(initialRegion, animated: true) }
    
    
    
    
}
