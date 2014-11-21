//
//  InterfaceController.swift
//  TimeTable WatchKit Extension
//
//  Created by Bas Broek on 21/11/2014.
//  Copyright (c) 2014 Bas Broek. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController
{
    @IBOutlet weak var table: WKInterfaceTable!

    var array = ["Test", "Another"]
    
    override init(context: AnyObject?)
    {
        super.init(context: context)
        // Initialize variables here.
        
        // Configure interface objects here.
        println("Initializing \(self)")
        
        loadTableData()
    }
    
    func loadTableData()
    {
        self.table.setNumberOfRows(self.array.count, withRowType: "default")
        
        for index in 0 ..< self.array.count
        {
            var rowT = self.table.rowControllerAtIndex(index) as RowController
            rowT.label.setText(array[index])
        }
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
}
