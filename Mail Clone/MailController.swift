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

extension MailController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "messageCell", for: indexPath) as? MessageCell else {
            fatalError("Unable to dequeue reusable cell with an identifier \"messageCell.\"")
        }
//        cell.message = message
        return cell
    }
}

