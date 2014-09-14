//
//  MessageController.swift
//  Enso
//
//  Created by Leonardo Lee on 9/13/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit
import MessageUI

class MessageController: NSObject, MFMessageComposeViewControllerDelegate {
    
    func generateSMSMessage() {
        
        if MFMessageComposeViewController.canSendText() {}
        if MFMessageComposeViewController.canSendSubject() {}
        if MFMessageComposeViewController.canSendAttachments() {}
        
        
        var message = MFMessageComposeViewController()
        //message.delegate
        //message.subject
        //message.body
        //message.addAttachmentData(<#attachmentData: NSData!#>, typeIdentifier: <#String!#>, filename: <#String!#>)
        //message.recipients
        
    }
    
    func messageComposeViewController(controller: MFMessageComposeViewController!, didFinishWithResult result: MessageComposeResult) {
    }
    
}