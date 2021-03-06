//
//  LoginVC.swift
//  Smack
//
//  Created by Virgil Nilson on 8/31/17.
//  Copyright © 2017 Virgil Nilson. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var invalidTxt: UILabel!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passText: UITextField!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        spinner.isHidden = false
        spinner.startAnimating()
        self.invalidTxt.isHidden = true
        
        guard let email = emailTxt.text , emailTxt.text != "" else { return }
        guard let pass = passText.text , passText.text != "" else { return }
        
        AuthService.instance.loginUser(email: email, password: pass) { (success) in
            if success {
                AuthService.instance.findUserByEmail(completion: { (success) in
                    if success {
                        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
                        self.spinner.isHidden = true
                        self.spinner.stopAnimating()
                        self.dismiss(animated: true, completion: nil)
                    } 
                })
            } else {
                self.spinner.isHidden = true
                self.spinner.stopAnimating()
                self.invalidTxt.isHidden = false
            }
        }
    }
    
    func setupView() {
        spinner.isHidden = true
        invalidTxt.isHidden = true
        emailTxt.attributedPlaceholder = NSAttributedString(string: "email", attributes: [NSAttributedStringKey.foregroundColor: SMACKPURPLEPLACEHOLDER])
        passText.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedStringKey.foregroundColor: SMACKPURPLEPLACEHOLDER])

    }
    

}
