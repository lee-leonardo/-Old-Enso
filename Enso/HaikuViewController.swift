//
//  HaikuViewController.swift
//  Enso
//
//  Created by Leonardo Lee on 9/6/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

//Need to finish this part up, I need to have the haiku functionality working fully I believe. The Share extension is the best to couple with it at the moment. Core Data functionality and saving can be added ASAP.
class HaikuViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var haikuField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.haikuField.delegate = self
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.view.backgroundColor = UIColor(hue: 0, saturation: 0.5, brightness: 1, alpha: 0.1)
        self.haikuField.text = randomHaiku()
        self.haikuField.backgroundColor = UIColor(hue: 0, saturation: 0.15, brightness: 0.7, alpha: 0.2)
        
//		NSNotificationCenter.defaultCenter().addObserverForName(UITextViewTextDidChangeNotification, object: self, queue: NSOperationQueue.mainQueue()) { (notification) -> Void in
//
//        }
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
//        NSNotificationCenter.defaultCenter().removeObserver(self, name: UITextViewTextDidChangeNotification, object: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: Touch methods
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        for control in self.view.subviews {
            if let theControl = control as? UITextView {
                theControl.resignFirstResponder()
            }
        }
    }
    
    //MARK: HaikuController methods
    func randomHaiku() -> String {
        var random = arc4random_uniform(10)
        
        switch random {
        case 0:
            return "A frog"
        case 1:
            return "A bell"
        case 2:
            return "A river"
        case 3:
            return "A forest"
        case 4:
            return "A cliff"
        case 5:
            return "A dragonfly"
        case 6:
            return "A petal"
        case 7:
            return "A tree"
        case 8:
            return "A fox"
        case 9:
            return "A butterfly"
        default:
            return "..."
        }
    }
    
    //MARK: UITextView
    func textViewDidChange(textView: UITextView) {
        println("Did change")
    }
    func textViewDidEndEditing(textView: UITextView) {
        println("Haiku Ended")
    }
}
