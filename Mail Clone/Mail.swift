//
//  Mail.swift
//  Mail Clone
//
//  Created by Sharrar Wasit on 10/11/21.
//

import Foundation

struct Mail: Decodable {
    var messages: [Message]
    
    struct Message: Decodable {
        var sender: String
        var subject: String
        var body: String
        var timestamp: Double
    }
}

extension Mail.Message {
    var subjectDisplay : String {
        return subject.isEmpty ? "(No Subject)" : subject
    }
}
