//
//  MapViewController.swift
//  Lt7y7TechCompaniesLocator
//
//  Created by Liuyuan Tan on 2/23/15.
//  Copyright (c) 2015 Liuyuan Tan. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var backButton: UIBarButtonItem!
    @IBOutlet weak var navBarTitle: UINavigationItem!
    
    var region: TechCompanyRegion!
    
    var mapRegion: MapRegion!
    var mapData: MapData!
    
    override func viewWillAppear(animated: Bool) {
        println("Map view will appear")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navBarTitle.title = region.region
        
        var (mapLat, mapLon, mapDelta) = calculateMapLocation(region)
        
        mapRegion = MapRegion(title: region.region, location: CLLocationCoordinate2DMake(mapLat, mapLon), latDelta: mapDelta, lonDelta: mapDelta)
        
        for company in region.companies {
            var annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2DMake(company.lat, company.lon)
            annotation.title = company.company
            mapView.addAnnotation(annotation)
        }
        
        mapView.setRegion(MKCoordinateRegion(center: mapRegion.location, span: MKCoordinateSpan(latitudeDelta: mapRegion.latDelta, longitudeDelta: mapRegion.lonDelta)), animated: true)
        
    }
    
    // Calculate the proper lat, lon, and delta for the map view
    func calculateMapLocation(region: TechCompanyRegion) -> (CLLocationDegrees, CLLocationDegrees, CLLocationDegrees){
        var maxLat: CLLocationDegrees = region.companies[0].lat
        var minLat: CLLocationDegrees = region.companies[0].lat
        var maxLon: CLLocationDegrees = region.companies[0].lon
        var minLon: CLLocationDegrees = region.companies[0].lon
        var mapLat: CLLocationDegrees = region.companies[0].lat
        var mapLon: CLLocationDegrees = region.companies[0].lon
        var mapDelta: CLLocationDegrees = 0
        
        // Calculate the max and min lats and lons in the region
        for company in region.companies {
            if (company.lat > abs(maxLat)){
                maxLat = company.lat
            }
            if (company.lat < minLat){
                minLat = company.lat
            }
            if (abs(company.lon) > abs(maxLon)){
                maxLon = company.lon
            }
            if (abs(company.lon) < abs(minLon)){
                minLon = company.lon
            }
        }
        
        // Calculate the lat and lon on the map view
        mapLat = (maxLat + minLat) / 2
        mapLon = (maxLon + minLon) / 2
        // Calculate the delta for the map view
        // Leave 10% of space on the map
        if ((maxLat - minLat) > (abs(maxLon) - abs(minLon))){
            mapDelta = (maxLat - minLat) * 1.1
        } else {
            mapDelta = (abs(maxLon) - abs(minLon)) * 1.1
        }
        return (mapLat, mapLon, mapDelta)
    }
    
    @IBAction func backButtonPress(sender: AnyObject) {
        performSegueWithIdentifier("returnToTable", sender: self)
    }
    

}
