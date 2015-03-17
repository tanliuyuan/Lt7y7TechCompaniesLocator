//
//  MapData.swift
//  Lt7y7TechCompaniesLocator
//
//  Created by Liuyuan Tan on 2/19/15.
//  Copyright (c) 2015 Liuyuan Tan. All rights reserved.
//

import UIKit
import MapKit

struct MapRegion {
    var title: String
    var location: CLLocationCoordinate2D
    var latDelta: CLLocationDegrees
    var lonDelta: CLLocationDegrees
}

struct Annotation {
    var title: String
    var lat: CLLocationDegrees
    var lon: CLLocationDegrees
}

class MapData: NSObject {
    

}