//
//  TimeStuff.swift
//  Charter Essentials
//
//  Created by Michael Janvier on 1/22/15.
//  Copyright (c) 2015 Ambiark. All rights reserved.
//

import Foundation
import Spritekit
class TimeStuff {

    class func createShit(time: Int) -> NSDate
    {
        var today: NSDate = NSDate()
        var calendar: NSCalendar = NSCalendar.currentCalendar()
        var components: NSDateComponents = calendar.components(NSCalendarUnit.CalendarUnitYear | NSCalendarUnit.CalendarUnitDay | NSCalendarUnit.CalendarUnitMonth, fromDate: today)
        components.setValue(time, forComponent: NSCalendarUnit.CalendarUnitHour)
        var newDate: NSDate = calendar.dateFromComponents(components)!
        
        
        return newDate
    }
    




}