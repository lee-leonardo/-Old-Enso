//
//  EnsoPhotosController.swift
//  Enso
//
//  Created by Leonardo Lee on 9/5/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit
import Photos

//Need to plan this feature a bit more, I may use this to do both videos and photos.
//I am hesitant to develop a full on camera feature (modally presented). However I believe I am confident enough to do it.
class EnsoPhotosController {
    
    var asset : PHAsset?
    var fetchResult : PHFetchResult?
    var photoManager : PHCachingImageManager
//    var context : CIContext
    
    init(){
        self.photoManager = PHCachingImageManager()
    }
    
    func fetchAsset(asset : PHAsset) {
        
    }
    
}