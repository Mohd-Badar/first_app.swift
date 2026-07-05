//
//  LoginViewController.swift
//  Mohd Badar Create your account
//
//  Created by Mohd Badar on 03/07/26.
//

import UIKit

class BusinessLoginViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    
    func showAlert(message: String){
        let alert = UIAlertController(title: "Warning", message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameField.layer.cornerRadius = 10
        nameField.layer.borderWidth = 1
        nameField.layer.borderColor = UIColor.systemBlue.cgColor
        
        numberField.layer.cornerRadius = 10
        numberField.layer.borderWidth = 1
        numberField.layer.borderColor = UIColor.systemBlue.cgColor
        
        emailField.layer.cornerRadius = 10
        emailField.layer.borderWidth = 1
        emailField.layer.borderColor = UIColor.systemBlue.cgColor
        
        // Do any additional setup after loading the view.
    }
    @IBAction func businessTappedBtn(_ sender: UIButton) {
        if
            nameField.text?.isEmpty == true ||
                numberField.text?.isEmpty == true ||
                emailField.text?.isEmpty == true {
            showAlert(message: "Please fill all the fields.")
        } else {
            let vc = storyboard?.instantiateViewController(withIdentifier: "businessSuccessVC")
                    show(vc!, sender: self)
        }
        
        UserDefaults.standard.set(nameField.text, forKey: "name")
        UserDefaults.standard.set(numberField.text, forKey: "number")
        UserDefaults.standard.set(emailField.text, forKey: "email")
        
        UserDefaults.standard.set("Individual", forKey: "userType")
        
        
    }
    
}
