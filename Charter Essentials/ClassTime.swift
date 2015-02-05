//
//  ClassTime.swift
//  Charter Essentials
//
//  Created by Michael Janvier on 2/5/15.
//  Copyright (c) 2015 Ambiark. All rights reserved.
//

import Foundation
class ClassTime {
    var description: String!
    var time: NSDate!
    
    init(setTime: NSDate, setDescription: String)
    {
        time = setTime
        description = setDescription
    }
    
}