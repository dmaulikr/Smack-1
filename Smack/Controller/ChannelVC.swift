//
//  ChannelVC.swift
//  Smack
//
//  Created by Virgil Nilson on 8/31/17.
//  Copyright © 2017 Virgil Nilson. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    @IBAction func loginButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
