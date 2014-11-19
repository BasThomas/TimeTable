//
//  CourseViewController.swift
//  TimeTable
//
//  Created by Bas Broek on 19/11/2014.
//  Copyright (c) 2014 Bas Broek. All rights reserved.
//

import WatchKit

class CourseViewController: NSObject
{
	// MARK: Properties
	@IBOutlet weak var courseLabel: WKInterfaceLabel!
	
	// MARK: Methods
	
	func setText(text: String)
	{
		self.courseLabel.setText(text)
	}
}
