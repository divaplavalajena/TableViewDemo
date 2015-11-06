//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Jena Grafton on 11/6/15.
//  Copyright © 2015 Bella Voce Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let data1 = ["Data 1", "Data 2", "Data 3", "Data 4", "Data 5", "Data 6"]
    
    let data2 = ["New Data 1", "New Data 2", "New Data 3", "New Data 4", "New Data 5", "New Data 6"]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0) {
            return data1.count
        } else {
            return data2.count
        }
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if (section == 0) {
            return "Old Data"
        } else {
            return "New Data"
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        if (indexPath.section == 0) {
            cell.textLabel?.text = data1[indexPath.row]
        } else {
            cell.textLabel?.text = data2[indexPath.row]
        }
        
        cell.detailTextLabel?.text = "Jena Grafton"
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

