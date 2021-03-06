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
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //calculating the time
        let currentDateTime = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .medium
        timeLabel.text = "\(dateFormatter.string(from:currentDateTime))" //displays on label
        
        //calculating the date
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale(identifier: "en_US")
        dateLabel.text = "\(dateFormatter.string(from:currentDateTime))" //displays on label
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

