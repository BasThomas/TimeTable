//
//  ScheduleTableViewController.swift
//  TimeTable
//
//  Created by Bas Broek on 21/11/2014.
//  Copyright (c) 2014 Bas Broek. All rights reserved.
//

import UIKit

class ScheduleTableViewController: UITableViewController {

    var daysAhead: Int
    var url: String
    
    required init(coder aDecoder: NSCoder)
    {
        // Do stuff.
        self.daysAhead = 14 // Gets two weeks ahead + startOfWeek.
        self.url = "https://apps.fhict.nl/api/v1/Schedule/me?expandTeacher=false&daysAhead=\(daysAhead)&IncludeStartOfWeek=true"
        
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        // Return the number of sections.
        return 5
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return "HEADER"
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // Return the number of rows in the section.
        return 3
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("default", forIndexPath: indexPath) as UITableViewCell
        
        // Configure the cell...
        
        return cell
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    
    // MARK: - Actions
    
    @IBAction func logout(sender: AnyObject)
    {
        println("logging out")
    }
}
