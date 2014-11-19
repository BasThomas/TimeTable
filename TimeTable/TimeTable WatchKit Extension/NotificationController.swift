//
//  NotificationController.swift
//  TimeTable WatchKit Extension
//
//  Created by Bas Broek on 19/11/2014.
//  Copyright (c) 2014 Bas Broek. All rights reserved.
//

import WatchKit
import Foundation


class NotificationController: WKUserNotificationInterfaceController
{
    override init(context: AnyObject?)
    {
        // Initialize variables here.
        super.init(context: context)
        
        // Configure interface objects here.
        println("Initializing \(self)")
    }
    
    override func willActivate()
    {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        println("Will activate \(self)")
    }
    
    override func didDeactivate()
    {
        // This method is called when watch view controller is no longer visible
        println("Did deactivate \(self)")
        super.didDeactivate()
    }

    /*
    override func didReceiveLocalNotification(localNotification: UILocalNotification, withCompletion completionHandler: ((WKUserNotificationInterfaceType) -> Void))
    {
        // This method is called when a local notification needs to be presented.
        // Implement it if you use a dynamic notification interface.
        // Populate your dynamic notification inteface as quickly as possible.
        //
        // After populating your dynamic notification interface call the completion block.
        completionHandler(.Custom)
    }
    */
    
    /*
    override func didReceiveRemoteNotification(remoteNotification: [NSObject : AnyObject], withCompletion completionHandler: ((WKUserNotificationInterfaceType) -> Void))
    {
        // This method is called when a remote notification needs to be presented.
        // Implement it if you use a dynamic notification interface.
        // Populate your dynamic notification inteface as quickly as possible.
        //
        // After populating your dynamic notification interface call the completion block.
        completionHandler(.Custom)
    }
    */
}
