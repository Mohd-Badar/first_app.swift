//
//  ViewController.swift
//  Mohd Badar Create your account
//
//  Created by Mohd Badar on 02/07/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var individualLabel: UILabel!
    @IBOutlet weak var individualImage: UIImageView!
    @IBOutlet weak var individualView: UIView!
    @IBOutlet weak var businessLabel: UILabel!
    @IBOutlet weak var businessImage: UIImageView!
    @IBOutlet weak var businessView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        businessView.layer.cornerRadius = 10
        businessView.layer.borderWidth = 1
        businessView.layer.borderColor = UIColor.systemBlue.cgColor
        businessLabel.textColor = .black
        businessImage.image = UIImage(named: "buisness_color")
        
        individualView.layer.cornerRadius = 10
        individualView.layer.borderWidth = 1
        individualView.layer.borderColor = UIColor.gray.cgColor
        individualLabel.textColor = .gray
        individualImage.image = UIImage(named: "individual")
        
        
    }
    
    
    
    var selectedOption = ""
    
    @IBAction func individualTapped(_ sender: Any) {
        selectedOption = "individual"
    }
    @IBAction func businessTapped(_ sender: Any) {
        selectedOption = "business"
    }
    @IBAction func button(_ sender: Any) {
            
        if selectedOption == "individual" {
            
            let vc = storyboard?.instantiateViewController(withIdentifier: "individualVC")
            present(vc!, animated: true)
            
        } else if selectedOption == "business" {
            
            let vc = storyboard?.instantiateViewController(withIdentifier: "businessVC")
            present(vc!, animated: true)
            
        } else {
            print("Select option first bhai")
        }
    }
    
    
    
    
    @IBAction func businessBtn(_ sender: Any) {
        businessView.layer.cornerRadius = 10
        businessView.layer.borderWidth = 1
        businessView.layer.borderColor = UIColor.systemBlue.cgColor
        businessLabel.textColor = .black
        businessImage.image = UIImage(named: "buisness_color")
        
        individualView.layer.cornerRadius = 10
        individualView.layer.borderWidth = 1
        individualView.layer.borderColor = UIColor.gray.cgColor
        individualLabel.textColor = .gray
        individualImage.image = UIImage(named: "individual")
    }
    
    @IBAction func individualBtn(_ sender: Any) {
        
        individualView.layer.cornerRadius = 10
        individualView.layer.borderWidth = 1
        individualView.layer.borderColor = UIColor.systemBlue.cgColor
        individualLabel.textColor = .black
        individualImage.image = UIImage(named: "individual_color")
        
        businessView.layer.cornerRadius = 10
        businessView.layer.borderWidth = 1
        businessView.layer.borderColor = UIColor.gray.cgColor
        businessLabel.textColor = .gray
        businessImage.image = UIImage(named: "buisness")
    }
    
}

