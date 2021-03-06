//
//  ShareViewController.swift
//  EnsoShareExtension
//
//  Created by Leonardo Lee on 9/6/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit
import Social

class ShareViewController: SLComposeServiceViewController {

    override func isContentValid() -> Bool {
        // Do validation of contentText and/or NSExtensionContext attachments here
        
        
        
        return true
    }

    override func didSelectPost() {
        // This is called after the user selects Post. Do the upload of contentText and/or NSExtensionContext attachments.
    
        // Inform the host that we're done, so it un-blocks its UI. Note: Alternatively you could call super's -didSelectPost, which will similarly complete the extension context.http://learnyouahaskell.com/chapters
        
        var inputItem = self.extensionContext?.inputItems.first as NSExtensionItem
        var outputItem = inputItem.copy() as NSExtensionItem
        outputItem.attributedContentText = NSAttributedString(string: self.contentText)
        var outputItems = [outputItem]
        
        self.extensionContext?.completeRequestReturningItems(outputItems, completionHandler: nil)
    }

    override func configurationItems() -> [AnyObject]! {
        // To add configuration options via table cells at the bottom of the sheet, return an array of SLComposeSheetConfigurationItem here.
        return NSArray()
    }

}
