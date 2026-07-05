//
//  ProfileViewController.swift
//  Mohd Badar Create your account
//
//  Created by Mohd Badar on 04/07/26.
//

import UIKit

class ProfileViewController: UIViewController {

   
    @IBOutlet weak var editBtn: UIButton!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profilePhoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberField.isEnabled = false
        emailField.isEnabled = false
        
        profilePhoto.layer.cornerRadius = profilePhoto.bounds.width / 2
        profilePhoto.clipsToBounds = true
        profilePhoto.layer.borderWidth = 1
        profilePhoto.layer.borderColor = UIColor.black.cgColor
        
        numberField.layer.cornerRadius = 10
        numberField.layer.borderWidth = 1
        numberField.layer.borderColor = UIColor.systemBlue.cgColor
        numberField.setLeftPadding(15)
        
        emailField.layer.cornerRadius = 10
        emailField.layer.borderWidth = 1
        emailField.layer.borderColor = UIColor.systemBlue.cgColor
        emailField.setLeftPadding(15)
        
        nameLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        numberField.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        emailField.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        
        nameLabel.text = UserDefaults.standard.string(forKey: "name")
        numberField.text = UserDefaults.standard.string(forKey: "number")
        emailField.text = UserDefaults.standard.string(forKey: "email")
        
        editBtn.layer.backgroundColor = UIColor.blue.cgColor
        editBtn.layer.cornerRadius = 10
        editBtn.titleLabel?.textColor = .white


        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        nameLabel.text = UserDefaults.standard.string(forKey: "name")
        emailField.text = UserDefaults.standard.string(forKey: "email")
        numberField.text = UserDefaults.standard.string(forKey: "number")
        
        if let imageData = UserDefaults.standard.data(forKey: "profileImage") {
            profilePhoto.image = UIImage(data: imageData)
        }
    }
    
    @IBAction func editBtn(_ sender: Any) {
    }
    
}

extension UITextField {
    
    func setLeftPadding(_ amount: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}

