//
//  TechCompaniesLocatorViewController.swift
//  Lt7y7TechCompaniesLocator
//
//  Created by Liuyuan Tan on 2/19/15.
//  Copyright (c) 2015 Liuyuan Tan. All rights reserved.
//

import UIKit
import MapKit

class TechCompaniesLocatorViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let techCompaniesData = TechCompaniesData()

    let prototypeCellIdentifier = "regionCell"
    
    var mapViewController: UIViewController?
    
    var region: TechCompanyRegion?
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (techCompaniesData.techCompanyRegions != nil){
            return techCompaniesData.techCompanyRegions!.count
        } else {
            return 0
        }
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let regionCell = tableView.dequeueReusableCellWithIdentifier(prototypeCellIdentifier) as UITableViewCell
        
        if (techCompaniesData.techCompanyRegions != nil){
            let region = techCompaniesData.techCompanyRegions![indexPath.row]
            let (regionName, numberOfCompanies) = (region.region, region.companies.count)
            //let numberOfCompanies = region.companies.count
            
            regionCell.textLabel?.text = regionName
            regionCell.detailTextLabel?.text = "\(numberOfCompanies) Companies"
        }
        
        return regionCell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        // When a region is selected, pass its name and location data through the segue
        if (techCompaniesData.techCompanyRegions != nil){
            region = techCompaniesData.techCompanyRegions![indexPath.row]
            
            // Go to map view
            performSegueWithIdentifier("mapSegue", sender: self)
        }

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        println("Preparing for segue")
        
        let destViewController = segue.destinationViewController as MapViewController
        if (region != nil){
            destViewController.region = region
        }
    }
    
    @IBAction func returnToTable(segue: UIStoryboardSegue){
        println("Returning to table view")
    }
    
}
