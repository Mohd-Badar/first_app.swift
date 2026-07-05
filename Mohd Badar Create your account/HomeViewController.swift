//
//  HomeViewController.swift
//  Mohd Badar Create your account
//
//  Created by Mohd Badar on 03/07/26.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nailsView: UIView!
    @IBOutlet weak var hairCutView: UIView!
    @IBOutlet weak var beautyView: UIView!
    @IBOutlet weak var hairView: UIView!
    @IBOutlet weak var hairCutImage: UIImageView!
    @IBOutlet weak var spaView: UIView!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let name = UserDefaults.standard.string(forKey: "name") ?? "User"
        welcomeLabel.text = "Hello, \(name) 👋"
        
        userImage.layer.cornerRadius = userImage.bounds.width / 2
        userImage.clipsToBounds = true
        userImage.layer.borderWidth = 1
        userImage.layer.borderColor = UIColor.black.cgColor
        
        hairView.layer.cornerRadius = 10
        hairView.layer.borderWidth = 1
        hairView.layer.borderColor = UIColor.systemBlue.cgColor
        
        beautyView.layer.cornerRadius = 10
        beautyView.layer.borderWidth = 1
        beautyView.layer.borderColor = UIColor.systemBlue.cgColor
        
        spaView.layer.cornerRadius = 10
        spaView.layer.borderWidth = 1
        spaView.layer.borderColor = UIColor.systemBlue.cgColor
        
        nailsView.layer.cornerRadius = 10
        nailsView.layer.borderWidth = 1
        nailsView.layer.borderColor = UIColor.systemBlue.cgColor
        
        hairCutView.layer.cornerRadius = 10
        hairCutView.layer.borderWidth = 1
        hairCutView.layer.borderColor = UIColor.systemBlue.cgColor
        
        hairCutImage.layer.cornerRadius = hairCutImage.bounds.width / 2
        hairCutImage.clipsToBounds = true
        hairCutImage.layer.borderWidth = 1
        hairCutImage.layer.borderColor = UIColor.black.cgColor

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let name = UserDefaults.standard.string(forKey: "name") ?? "User"
        
        nameLabel.text = name
        welcomeLabel.text = "Hello, \(name) 👋"
        
      
        if let imageData = UserDefaults.standard.data(forKey: "profileImage") {
            profileImageView.image = UIImage(data: imageData)
        } else {
            profileImageView.image = UIImage(named: "defaultProfile") 
        }
    }
    
}
