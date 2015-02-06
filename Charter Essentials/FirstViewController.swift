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

    @IBOutlet weak var periodTable: UITableView!
    @IBOutlet var classPeriodLabel: UILabel!
    
    let date = NSDate()
    let calendar = NSCalendar.currentCalendar()
    
    override func viewDidLoad() {
        counterDownTimer.text = "3:00"
        let method : Selector = "updateTime"
        var timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: method, userInfo: nil, repeats: true)
        
        super.viewDidLoad()
        
     
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateTime(){
    counterDownTimer.text = currentTime()
    }

    var Offset = -48.0
    
    func currentTime() -> String {
    
        var periodArray = TimeStuff.periodTimes()
        var currentTime = NSDate()
        var i = 0;
        while(periodArray[i].time.timeIntervalSince1970 + Offset < currentTime.timeIntervalSince1970){
            i++;
        }
        
        var poop: NSTimeInterval = periodArray[i].time.timeIntervalSinceDate(NSDate())
        
        
        
        classPeriodLabel.text = "Time until " + periodArray[i].description
        var blah = Int(poop + Offset)
        let hour = blah / 3600
        let minutes = ((blah - (hour * 3600)) / 60)
        let seconds = blah - (hour * 3600) - (minutes * 60)
        
        var Hour = "0"
        var Minutes="0"
        var Seconds="0"
        if(hour>9){
            Hour = hour.description
        }
        else{
            Hour = "0" + hour.description
        }
        if(minutes>9){
            Minutes = minutes.description
        }
        else{
            Minutes = "0" + minutes.description
        }
        if(seconds>9){
            Seconds = seconds.description
        }
        else{
            Seconds = "0" + seconds.description
        }
        
        
            return Hour + "h " + Minutes + "m " + Seconds + "s"

     //return blah.description
    }
    
    func DisplayCurrentTime(){
        counterDownTimer.text = TIME_ABSOLUTE.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    

}

