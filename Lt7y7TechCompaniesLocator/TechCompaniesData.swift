//
//  TechCompaniesData.swift
//  Lt7y7TechCompaniesLocator
//
//  Created by Liuyuan Tan on 2/23/15.
//  Copyright (c) 2015 Liuyuan Tan. All rights reserved.
//

import UIKit
import MapKit

struct TechCompany {
    var company: String
    var lat: CLLocationDegrees
    var lon: CLLocationDegrees
}
struct TechCompanyRegion {
    var region: String
    var companies: [TechCompany]
}

class TechCompaniesData: NSObject {
   
    var techCompanyRegions: [TechCompanyRegion]?
    
    override init(){
        
        // Tech Companies
        techCompanyRegions =
        [
            TechCompanyRegion (
                region: "Austin",
                companies:
                [
                    TechCompany ( company: "Twisted Pixel Games", lat: 30.227260, lon: -97.758868 ),
                    TechCompany ( company: "Replay Games", lat: 30.382348, lon: -97.743192 ),
                    TechCompany ( company: "Meta 3D Studios", lat: 30.357278, lon: -97.747837 ),
                    TechCompany ( company: "Roxor Games", lat: 30.351395, lon: -97.756909 ),
                    TechCompany ( company: "Spiceworks", lat: 30.371099, lon: -97.801169 ),
                    TechCompany ( company: "LifeSize", lat: 30.260138, lon: -97.791293 ),
                    TechCompany ( company: "Asure Software", lat: 30.306275, lon: -97.827773 )
                ]
            ),
            TechCompanyRegion (
                region: "Chicago",
                companies:
                [
                    TechCompany ( company: "Cars.com", lat: 41.877712, lon: -87.633256 ),
                    TechCompany ( company: "Orbitz", lat: 41.882092, lon: -87.640487 ),
                    TechCompany ( company: "Braintree", lat: 41.921558, lon: -87.702482 ),
                    TechCompany ( company: "GoHealth Insurance", lat: 41.895017, lon: -87.634866 ),
                    TechCompany ( company: "Sprout Social", lat: 41.879836, lon: -87.628866 ),
                    TechCompany ( company: "Careerbuilder", lat: 41.886140, lon: -87.632753 ),
                    TechCompany ( company: "MBuy", lat: 41.896913, lon: -87.643547 )
                ]
            ),
            TechCompanyRegion (
                region: "New York City",
                companies:
                [
                    TechCompany ( company: "Tumblr", lat: 40.739312, lon: -73.988615 ),
                    TechCompany ( company: "MongoDB", lat: 40.757527, lon: -73.987830 ),
                    TechCompany ( company: "Everyday Health", lat: 40.727694, lon: -74.007412 ),
                    TechCompany ( company: "Etsy Incorporated", lat: 40.702853, lon: -73.989435 ),
                    TechCompany ( company: "AppNexus", lat: 40.741773, lon: -73.990998 ),
                    TechCompany ( company: "MakerBot", lat: 40.693482, lon: -73.986897 ),
                    TechCompany ( company: "Kickstarter", lat: 40.719066, lon: -73.985612 ),
                    TechCompany ( company: "Outbrain", lat: 40.736288, lon: -73.996000 ),
                    TechCompany ( company: "Smartling", lat: 40.752578, lon: -73.987947 )
                ]
            ),
            TechCompanyRegion (
                region: "San Francisco",
                companies:
                [
                    TechCompany ( company: "Zynga", lat: 37.771026, lon: -122.404046 ),
                    TechCompany ( company: "SEGA of America", lat: 37.765689, lon: -122.403000 ),
                    TechCompany ( company: "BitTorrent Inc", lat: 37.785372, lon: -122.396140 ),
                    TechCompany ( company: "OpenDNS", lat: 37.774992, lon: -122.398527 ),
                    TechCompany ( company: "Linden Lab", lat: 37.800271, lon: -122.401633 ),
                    TechCompany ( company: "Advent Software", lat: 37.771725, lon: -122.402466 ),
                    TechCompany ( company: "PC World Online", lat: 37.783002, lon: -122.393176 )
                ]
            ),
            TechCompanyRegion (
                region: "Seattle",
                companies:
                [
                    TechCompany ( company: "Amazon", lat: 47.622590, lon: -122.336770 ),
                    TechCompany ( company: "Microsoft", lat: 47.642498, lon: -122.136907 ),
                    TechCompany ( company: "Zillow", lat: 47.607937, lon: -122.338210 ),
                    TechCompany ( company: "F5 Networks", lat: 47.622485, lon: -122.363594 ),
                    TechCompany ( company: "Big Fish Games", lat: 47.620806, lon: -122.361836 ),
                    TechCompany ( company: "PopCap Games", lat: 47.616210, lon: -122.346098 ),
                    TechCompany ( company: "Getty Images", lat: 47.597113, lon: -122.328489 ),
                    TechCompany ( company: "Corbis", lat: 47.603523, lon: -122.332999 ),
                    TechCompany ( company: "Code Systems", lat: 47.628383, lon: -122.342221 )
                ]
            ),
            TechCompanyRegion (
                region: "Silicon Valley",
                companies:
                [
                    TechCompany ( company: "Apple", lat: 37.332254, lon: -122.029541 ),
                    TechCompany ( company: "Google", lat: 37.422170, lon: -122.084079 ),
                    TechCompany ( company: "Adobe Systems", lat: 37.330941, lon: -121.894250 ),
                    TechCompany ( company: "Autodesk Inc", lat: 38.005466, lon: -122.530585 ),
                    TechCompany ( company: "Oracle", lat: 37.386586, lon: -122.084005 ),
                    TechCompany ( company: "Mozilla", lat: 37.393252, lon: -122.073447 ),
                    TechCompany ( company: "VMware", lat: 37.401913, lon: -122.143853 ),
                    TechCompany ( company: "SAP", lat: 37.398827, lon: -122.146538 ),
                    TechCompany ( company: "Intuit", lat: 37.430603, lon: -122.096018 ),
                    TechCompany ( company: "eBay", lat: 37.295442, lon: -121.927411 )
                ]
            )
        ]
        
    }

}
