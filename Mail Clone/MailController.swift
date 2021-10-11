//
//  MailController.swift
//  Mail Clone
//
//  Created by Sharrar Wasit on 10/10/21.
//

import UIKit

class MailController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NetworkManager.fetchMailMessages()
    }


}

