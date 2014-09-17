//
//  DataController.swift
//  Enso
//
//  Created by Leonardo Lee on 9/5/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class DataController {
    
    var appDelegate : AppDelegate
    
    init(){
        self.appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
    }
    
//MARK: Request
    func refreshHaikus() {
        var error : NSError?
        
        if error != nil {
            println("DataController FetchRequestError: \(error?.localizedDescription)")
        }
    }
    
}
