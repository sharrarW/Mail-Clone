//
//  MailController.swift
//  Mail Clone
//
//  Created by Sharrar Wasit on 10/10/21.
//

import UIKit

class MailViewModel {
    var messages: [Mail.Message] = []
    
    func fetchMailMessages(_ completion: @escaping () -> Void) {
        NetworkManager.fetchMailMessages { (messages) in
            self.messages = messages
            completion()
        }
    }
}

class MailController: UITableViewController {

    private let vm = MailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        vm.fetchMailMessages { [weak self] in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMessageDetails" {
            guard let viewController = segue.destination as? MessageDetailsViewController, let message = sender as? Mail.Message else { return }
            viewController.vm = MessageDetailsViewModel(message: message)
        }
    }

}
// MARK: UITableViewDataSource
extension MailController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.messages.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "messageCell", for: indexPath) as? MessageCell else {
            fatalError("Unable to dequeue reusable cell with an identifier \"messageCell.\"")
        }
        cell.message = vm.messages[indexPath.row]
        return cell
    }
}

// MARK: UITableViewDelegate

extension MailController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showMessageDetails", sender: vm.messages[indexPath.row])
    }
}

