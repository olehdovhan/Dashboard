//
//  ViewController.swift
//  UserAnalytics
//
//  Created by Oleh Dovhan on 26.04.2021.
//

import UIKit

class RegistrationViewController: UIViewController {
  @IBOutlet var registerButton: UIButton!
  
  @IBOutlet var nameTextField: UITextField! {
    didSet{
      nameTextField.attributedPlaceholder = NSAttributedString(string: "Name",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont(name: "Poppins-regular", size: 18)!])
    }
  }
  
  @IBOutlet var emailTextField: UITextField! {
    didSet{
      emailTextField.attributedPlaceholder = NSAttributedString(string: "Email",
                                                                attributes: [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont(name: "Poppins-regular", size: 18)!])
    }
  }
  
  @IBOutlet var userNameTextField: UITextField! {
    didSet{
      userNameTextField.attributedPlaceholder = NSAttributedString(string: "Username",
                                                                   attributes: [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont(name: "Poppins-regular", size: 18)!])
    }
  }
  
  @IBOutlet var passwordTextField: UITextField! {
    didSet{
      passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password",
                                                                   attributes: [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont(name: "Poppins-regular", size: 18)!])
    }
  }
  
  @IBOutlet var confirmPasswordTextField: UITextField! {
    didSet{
      confirmPasswordTextField.attributedPlaceholder = NSAttributedString(string: "Confirm Password",
                                                                          attributes: [NSAttributedString.Key.foregroundColor: UIColor.white,
                                                                                       NSAttributedString.Key.font: UIFont(name:"Poppins-regular", size: 18)!])
    }
  }
  //MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    registerButton.isEnabled = false
    setupTargetsForTextFields()
  }
  
  @IBAction func registerButton(_ sender: Any) {
  }
}

extension RegistrationViewController: UITextFieldDelegate {
  func setupTargetsForTextFields() {
    nameTextField.addTarget(self, action: #selector(textFieldsIsNotEmpty),
                            for: .editingChanged)
    userNameTextField.addTarget(self, action: #selector(textFieldsIsNotEmpty),
                                for: .editingChanged)
    emailTextField.addTarget(self, action: #selector(textFieldsIsNotEmpty),
                             for: .editingChanged)
    passwordTextField.addTarget(self, action: #selector(textFieldsIsNotEmpty),
                                for: .editingChanged)
    confirmPasswordTextField.addTarget(self, action: #selector(textFieldsIsNotEmpty),
                                       for: .editingChanged)
  }
  
  @objc func textFieldsIsNotEmpty(sender: UITextField) {
    guard
      let name = nameTextField.text, !name.isEmpty,
      let userName = userNameTextField.text, !userName.isEmpty,
      let email = emailTextField.text, !email.isEmpty,
      let password = passwordTextField.text, !password.isEmpty,
      let confirmPassword = confirmPasswordTextField.text,
      password == confirmPassword
    else{
      self.registerButton.isEnabled = false
      return
    }
    registerButton.isEnabled = true
  }
}
