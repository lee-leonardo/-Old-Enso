//
//  MainViewController.swift
//  Enso
//
//  Created by Leonardo Lee on 9/5/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
    var mainScrollView : UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mainScrollView = UIScrollView(frame: self.view.frame)
        makeScrollView()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        NSNotificationCenter.defaultCenter().addObserverForName("ShareRequest", object: self, queue: NSOperationQueue.mainQueue()) {
            (note: NSNotification!) -> Void in
            
        }
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        NSNotificationCenter.defaultCenter().removeObserver(self, name: "ShareRequest", object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func makeScrollView() {
        let totalWidth = self.view.frame.width * 3
        let totalHeight =  self.view.frame.height
        self.mainScrollView.contentSize = CGSize(width: totalWidth, height: totalHeight)
        self.mainScrollView.pagingEnabled = true
        self.mainScrollView.keyboardDismissMode = UIScrollViewKeyboardDismissMode.OnDrag
        self.mainScrollView.bounces = true
        self.mainScrollView.alwaysBounceHorizontal = true
        self.view.addSubview(self.mainScrollView)
        
        var haikuController = self.storyboard.instantiateViewControllerWithIdentifier("Write") as HaikuViewController
        var mediaController = self.storyboard.instantiateViewControllerWithIdentifier("Media") as MediaViewController
        var socialController = self.storyboard.instantiateViewControllerWithIdentifier("Social") as SocialViewController
        
        //Delegates
        
        var firstX = 0
        var secondX = Int(self.view.frame.width)
        var thirdX = Int(self.view.frame.width * 2)
        var standardWidth = Int(self.view.frame.width)
        var standardHeight = Int(self.view.frame.height)
        
        haikuController.view.frame = CGRect(x: firstX, y: 0, width: standardWidth, height: standardHeight)
        mediaController.view.frame = CGRect(x: secondX, y: 0, width: standardWidth, height: standardHeight)
        socialController.view.frame = CGRect(x: thirdX, y: 0, width: standardWidth, height: standardHeight)
        
        
        self.addChildViewController(haikuController)
        self.addChildViewController(mediaController)
        self.addChildViewController(socialController)
        
        self.mainScrollView.addSubview(haikuController.view)
        self.mainScrollView.addSubview(mediaController.view)
        self.mainScrollView.addSubview(socialController.view)
        
        haikuController.didMoveToParentViewController(self)
        mediaController.didMoveToParentViewController(self)
        socialController.didMoveToParentViewController(self)
        
        
        
        
    }


}

