//
//  BusinessSuccessViewController.swift
//  Mohd Badar Create your account
//
//  Created by Mohd Badar on 03/07/26.
//

import UIKit

class BusinessSuccessViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func businessSuccessHomeBtn(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let homeVC = storyboard.instantiateViewController(withIdentifier: "tabBarVC")
        
        homeVC.modalPresentationStyle = .fullScreen
        
        self.present(homeVC, animated: true)
    }
    
}
