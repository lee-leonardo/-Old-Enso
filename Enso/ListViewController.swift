//
//  ListViewController.swift
//  Enso
//
//  Created by Leonardo Lee on 9/15/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit
import CoreData

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate

    @IBOutlet weak var haikuListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
//MARK: - Delegates
//MARK: UITableView
    
    func setupCell(cell : UITableViewCell, forIndexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("HaikuCell", forIndexPath: indexPath) as UITableViewCell
        setupCell(cell, forIndexPath: indexPath)
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
//    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        <#code#>
//    }
    
//    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
}
