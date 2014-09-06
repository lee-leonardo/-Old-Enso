//
//  SocialViewController.swift
//  Enso
//
//  Created by Leonardo Lee on 9/5/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit
import Social

class SocialViewController: UIViewController {
    
//    var interactionController = UIDocumentInteractionController()
    var facebook = SLComposeViewController()
    var twitter = SLComposeViewController()
//    var instagram
//    var pinterest

    override func viewDidLoad() {
        super.viewDidLoad()
        setupShareControllers()
        
        NSNotificationCenter.defaultCenter().addObserverForName("ReceiveHaiku", object: nil, queue: NSOperationQueue.mainQueue()) {
            (note: NSNotification!) -> Void in
        }
    }
    
    override func viewWillDisappear(animated: Bool) {
        NSNotificationCenter.defaultCenter().removeObserver(self, name: "ReceiveHaiku", object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setupShareControllers() {
        var notification = NSNotification(name: "ShareRequest", object: nil)
        
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook) {
            self.facebook = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            self.facebook.setInitialText("Facebook initial text")
            
            //Check and add photos here.
            
        }
        
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter) {
            self.twitter = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            self.twitter.setInitialText("Twitter initial text")
        }
    }

}
