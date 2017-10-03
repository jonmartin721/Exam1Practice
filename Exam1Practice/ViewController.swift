//
//  ViewController.swift
//  Exam1Practice
//
//  Created by Jonathan on 10/2/17.
//  Copyright © 2017 Jonathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //outlets for date and time
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    
    //calculating the time and date
    let date = NSDate()
    let calendar = NSCalendar.current
    let components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute, fromDate: date)
    let hour = components.hour
    let minutes = components.minute
    
    var currentDateTime = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.timeStyle = .medium
    dateLabel.text = "\(dateFormatter.string(from:currentDateTime))"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

