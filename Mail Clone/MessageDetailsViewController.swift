//
//  MessageDetailsViewController.swift
//  Mail Clone
//
//  Created by Sharrar Wasit on 10/12/21.
//

import UIKit

struct MessageDetailsViewModel {
    var message: Mail.Message
}

class MessageDetailsViewController: UIViewController {

    var vm : MessageDetailsViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
