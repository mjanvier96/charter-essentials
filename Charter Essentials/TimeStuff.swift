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

    class func createShit(hour: Int, minute: Int, seconds: Int) -> NSDate
    {
        var today: NSDate = NSDate()
        var calendar: NSCalendar = NSCalendar.currentCalendar()
        var components: NSDateComponents = calendar.components(NSCalendarUnit.CalendarUnitYear | NSCalendarUnit.CalendarUnitDay | NSCalendarUnit.CalendarUnitMonth, fromDate: today)
        components.setValue(hour, forComponent: NSCalendarUnit.CalendarUnitHour)
        components.setValue(minute, forComponent: NSCalendarUnit.CalendarUnitMinute)
        components.setValue(seconds, forComponent: NSCalendarUnit.CalendarUnitSecond)

        var newDate: NSDate = calendar.dateFromComponents(components)!
        
        
        return newDate
    }
    
    class func periodTimes() -> [ClassTime]
    {
        
        var classTimes = [ClassTime]()
        
        var homeroom: NSDate = TimeStuff.createShit(7, minute: 35, seconds: 0)
        classTimes.append(ClassTime(setTime: homeroom, setDescription: "Start of Homeroom"))
        
        var period1: NSDate = TimeStuff.createShit(7, minute: 45, seconds: 0)
        classTimes.append(ClassTime(setTime: period1, setDescription: "End of Homeroom"))
        
        var period2: NSDate = TimeStuff.createShit(7, minute: 49, seconds: 0)
        classTimes.append(ClassTime(setTime: period2, setDescription: "Start of First Period"))
        
        var period3: NSDate = TimeStuff.createShit(9, minute: 9, seconds: 0)
        classTimes.append(ClassTime(setTime: period3, setDescription: "End of First Period"))
        
        var period4: NSDate = TimeStuff.createShit(9, minute: 13, seconds: 0)
        classTimes.append(ClassTime(setTime: period4, setDescription: "Start of Second Period"))
        
        var period5: NSDate = TimeStuff.createShit(10, minute: 33, seconds: 0)
        classTimes.append(ClassTime(setTime: period5, setDescription: "End of 2nd Period"))
        
        var period6: NSDate = TimeStuff.createShit(10, minute: 37, seconds: 0)
        classTimes.append(ClassTime(setTime: period6, setDescription: "Start of Activity"))
        
        var period7: NSDate = TimeStuff.createShit(11, minute: 3, seconds: 0)
        classTimes.append(ClassTime(setTime: period6, setDescription: "End of Activity"))
        
        var period8: NSDate = TimeStuff.createShit(11, minute: 07, seconds: 0)
        classTimes.append(ClassTime(setTime: period8, setDescription: "Start of 3rd Period 3/First Lunch"))
        
        var period9: NSDate = TimeStuff.createShit(11, minute: 37, seconds: 0)
        classTimes.append(ClassTime(setTime: period9, setDescription: "End of First Lunch"))
        
        var period11: NSDate = TimeStuff.createShit(11, minute: 41, seconds: 0)
        classTimes.append(ClassTime(setTime: period11, setDescription: "Start of 3rd Period"))
        
        var period12: NSDate = TimeStuff.createShit(12, minute: 27, seconds: 0)
        classTimes.append(ClassTime(setTime: period12, setDescription: "End of 3rd Period"))
        
        var period10: NSDate = TimeStuff.createShit(12, minute: 31, seconds: 0)
        classTimes.append(ClassTime(setTime: period10, setDescription: "Start of Second Lunch"))
        
        var period13: NSDate = TimeStuff.createShit(13, minute: 1, seconds: 0)
        classTimes.append(ClassTime(setTime: period13, setDescription: "End of 2nd Lunch/3rd Period"))
        
        var period14: NSDate = TimeStuff.createShit(13, minute: 5, seconds: 0)
        classTimes.append(ClassTime(setTime: period14, setDescription: "Start of Fourth Period"))
        
        var endOfDay: NSDate = TimeStuff.createShit(14, minute: 25, seconds: 0)
        classTimes.append(ClassTime(setTime: endOfDay, setDescription: "End of Day"))
        
        var endOfDay1: NSDate = TimeStuff.createShit(24+7, minute: 35, seconds: 0)
        classTimes.append(ClassTime(setTime: endOfDay1, setDescription: "Homeroom Tomorow"))
                
        return classTimes
    }




}