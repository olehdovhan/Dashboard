//
//  ViewController.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 26.04.2021.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    
    @IBOutlet var register: UIButton!
    @IBOutlet var name: UITextField! {
        didSet{  name.attributedPlaceholder = NSAttributedString(string: "Name",
                                                                 attributes: [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont(name: "Poppins-regular", size: 18)! ])
        }
    }
    
    @IBOutlet var email: UITextField! {
        didSet{  email.attributedPlaceholder = NSAttributedString(string: "Email",
                                                                  attributes: [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont(name: "Poppins-regular", size: 18)! ])
        }
    }
    
    @IBOutlet var userName: UITextField! {
        didSet{  userName.attributedPlaceholder = NSAttributedString(string: "Username",
                                                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont(name: "Poppins-regular", size: 18)! ])
        }
    }
    
    @IBOutlet var password: UITextField! {
        didSet{  password.attributedPlaceholder = NSAttributedString(string: "Password",
                                                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont(name: "Poppins-regular", size: 18)! ])
        }
    }
    
    
    @IBOutlet var confirmPassword: UITextField! {
        didSet{  confirmPassword.attributedPlaceholder = NSAttributedString(string: "Confirm Password",
                                                                            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont(name: "Poppins-regular", size: 18)! ])
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAddTargetIsNotEmptyTextFields()
    }
    
    @IBAction func registerButton(_ sender: Any) {
    }
}

extension RegisterViewController: UITextFieldDelegate {
    func setupAddTargetIsNotEmptyTextFields() {
        register.isEnabled = false
        name.addTarget(self, action: #selector(textFieldsIsNotEmpty),
                       for: .editingChanged)
        userName.addTarget(self, action: #selector(textFieldsIsNotEmpty),
                           for: .editingChanged)
        email.addTarget(self, action: #selector(textFieldsIsNotEmpty),
                        for: .editingChanged)
        password.addTarget(self, action: #selector(textFieldsIsNotEmpty),
                           for: .editingChanged)
        confirmPassword.addTarget(self, action: #selector(textFieldsIsNotEmpty),
                                  for: .editingChanged)
    }
   
    @objc func textFieldsIsNotEmpty(sender: UITextField) {
        
        guard
            let name = name.text, !name.isEmpty,
            let userName = userName.text, !userName.isEmpty,
            let email = email.text, !email.isEmpty,
            let password = password.text, !password.isEmpty,
            let confirmPassword = confirmPassword.text,
            password == confirmPassword
        else
        {
            self.register.isEnabled = false
            return
        }
        register.isEnabled = true
    }
}

