//
//  FirstViewController.swift
//  Charter Essentials
//
//  Created by Jared Siskin on 1/21/15.
//  Copyright (c) 2015 Ambiark. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var counterDownTimer: UILabel!

    
    let date = NSDate()
    let calendar = NSCalendar.currentCalendar()
    
    override func viewDidLoad() {
        counterDownTimer.text = "3:00"
        let method : Selector = "updateTime"
        var timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: method, userInfo: nil, repeats: true)
        
        super.viewDidLoad()
        
     
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateTime(){
        counterDownTimer.text = currentTime()
    }

    func currentTime() -> String {
        let components = NSCalendar.currentCalendar().components(.CalendarUnitHour | .CalendarUnitMinute | .CalendarUnitSecond | .CalendarUnitNanosecond, fromDate: NSDate())
        let hour = components.hour
        let minutes = components.minute
        let seconds = components.second
        let nanoseconds = components.nanosecond
        //return hour.description + ":" + minutes.description + ":" + seconds.description + ":" + nanoseconds.description
        return NSDate(timeIntervalSince1970: nil).timeIntervalSinceDate(components)
    }
    
    
    func DisplayCurrentTime(){
        counterDownTimer.text = TIME_ABSOLUTE.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    

}

