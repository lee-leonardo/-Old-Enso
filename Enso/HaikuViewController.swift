//
//  HaikuViewController.swift
//  Enso
//
//  Created by Leonardo Lee on 9/6/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class HaikuViewController: UIViewController {
    
    @IBOutlet weak var haikuField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.view.backgroundColor = UIColor(hue: 0, saturation: 0.5, brightness: 1, alpha: 0.1)
        self.haikuField.backgroundColor = UIColor(hue: 0, saturation: 0.15, brightness: 0.7, alpha: 0.2)
        
        NSNotificationCenter.defaultCenter().addObserverForName(UITextViewTextDidChangeNotification, object: self, queue: NSOperationQueue.mainQueue()) { (note : NSNotification!) -> Void in
        }
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UITextViewTextDidChangeNotification, object: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: Touch methods
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        for control in self.view.subviews {
            if let theControl = control as? UITextView {
                theControl.resignFirstResponder()
            }
        }
    }
    
    //MARK: HaikuController methods
    func randomHaiku() {
        var random = arc4random_uniform(10)
        var randomHaiku : String
        
        switch random {
        case 0:
            println()
        default:
            println()
        }
    }
    
    //MARK: UITextView
    
}
