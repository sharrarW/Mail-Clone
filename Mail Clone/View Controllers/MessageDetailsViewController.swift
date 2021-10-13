//
//  MessageDetailsViewController.swift
//  Mail Clone
//
//  Created by Sharrar Wasit on 10/12/21.
//

import UIKit

struct MessageDetailsViewModel {
    var message: Mail.Message
    
    var navigationBarTitle: String {
        return message.sender
    }
    
    var cellSubject : String {
        return message.subject.isEmpty ? "(No Subject)" : message.subject
    }
    
    var cellTime : String {
        return message.timestamp.unixTimeStampAsDate
    }
    
    var cellBody : String {
        return message.body.isEmpty ? "No Body" : message.body
    }
}

class MessageDetailsViewController: UIViewController {

    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    
    var vm : MessageDetailsViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Setup UI
    private func setupUI() {
        setNavigationTitle(vm.navigationBarTitle)
        subjectLabel.text = vm.cellSubject
        timeLabel.text = vm.cellTime
        bodyLabel.text = vm.cellBody
    }
    
    private func setNavigationTitle(_ title: String) {
        navigationItem.title = title
    }
}
