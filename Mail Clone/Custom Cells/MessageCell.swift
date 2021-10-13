//
//  MessageCell.swift
//  Mail Clone
//
//  Created by Sharrar Wasit on 10/11/21.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var senderLabel: UILabel!
    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var message: Mail.Message? {
        
        didSet {
            
            guard let message = message else { return }
            
            senderLabel.text = message.sender
            subjectLabel.text = message.subjectDisplay
            bodyLabel.text = message.body
            timeLabel.text = message.timestamp.unixTimeStampAsDate
        }
    }
}
