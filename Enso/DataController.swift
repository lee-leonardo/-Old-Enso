//
//  DataController.swift
//  Enso
//
//  Created by Leonardo Lee on 9/5/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit
import CoreData

class DataController: NSFetchedResultsControllerDelegate {
    
    var appDelegate : AppDelegate
    var ensoContext : NSManagedObjectContext
    var resultsController : NSFetchedResultsController
    
    init(){
        self.appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        self.ensoContext = self.appDelegate.managedObjectContext!
        
        var request = NSFetchRequest(entityName: "Haiku")
        var sort = NSSortDescriptor(key: "Haiku", ascending: true)
        request.sortDescriptors = [sort]
        
        self.resultsController = NSFetchedResultsController(fetchRequest: request, managedObjectContext: self.ensoContext, sectionNameKeyPath: nil, cacheName: nil)
        self.resultsController.delegate = self
    }
    
//MARK: Request
    func refreshHaikus() {
        var error : NSError?
        self.resultsController.performFetch(&error)
        
        if error != nil {
            println("DataController FetchRequestError: \(error?.localizedDescription)")
        }
    }
    
}
