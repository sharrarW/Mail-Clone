//
//  DateFormat.swift
//  Mail Clone
//
//  Created by Sharrar Wasit on 10/11/21.
//

import Foundation

extension Date {
    var asFormattedDate : String {
        let formatter = DateFormatter()
        
        formatter.dateFormat = "h:mm a"
        formatter.amSymbol = "AM"
        formatter.pmSymbol = "PM"
        return formatter.string(from: self)
    }
}

extension Double {
    var unixTimeStampAsDate : String {
        return Date(timeIntervalSince1970: self).asFormattedDate
    }
}
