//
//  MainViewController.swift
//  Enso
//
//  Created by Leonardo Lee on 9/5/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var mainScrollView : UIScrollView!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mainScrollView = UIScrollView(frame: self.view.frame)
        makeScrollView()
        
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
        
        
    }


}

