//
//  EditViewController.swift
//  Mohd Badar Create your account
//
//  Created by Mohd Badar on 05/07/26.
//

import UIKit

protocol EditProfileDelegate: AnyObject {
    func didUpdateProfile(name: String, email: String, number: String, image: UIImage?)
}

class EditProfileViewController: UIViewController {
    
    weak var delegate: EditProfileDelegate?

    @IBOutlet weak var editLabel: UILabel!
    @IBOutlet weak var editImage: UIImageView!
    @IBOutlet weak var editName: UITextField!
    @IBOutlet weak var editNumber: UITextField!
    @IBOutlet weak var editEmail: UITextField!
    @IBOutlet weak var saveBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageData = UserDefaults.standard.data(forKey: "profileImage") {
            editImage.image = UIImage(data: imageData)
        }
        
        editImage.layer.cornerRadius = editImage.bounds.width / 2
        editImage.clipsToBounds = true
        editImage.layer.borderWidth = 1
        editImage.layer.borderColor = UIColor.black.cgColor
        
        editNumber.layer.cornerRadius = 10
        editNumber.layer.borderWidth = 1
        editNumber.layer.borderColor = UIColor.systemBlue.cgColor
        editNumber.setLeftPadding(15)
        
        editEmail.layer.cornerRadius = 10
        editEmail.layer.borderWidth = 1
        editEmail.layer.borderColor = UIColor.systemBlue.cgColor
        editEmail.setLeftPadding(15)
        
        editName.layer.cornerRadius = 10
        editName.layer.borderWidth = 1
        editName.layer.borderColor = UIColor.systemBlue.cgColor
        editName.setLeftPadding(15)
        
        editLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        editNumber.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        editEmail.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        
        editName.text = UserDefaults.standard.string(forKey: "name")
        editLabel.text = UserDefaults.standard.string(forKey: "name")
        editNumber.text = UserDefaults.standard.string(forKey: "number")
        editEmail.text = UserDefaults.standard.string(forKey: "email")
        
        saveBtn.layer.backgroundColor = UIColor.blue.cgColor
        saveBtn.layer.cornerRadius = 10
        saveBtn.titleLabel?.textColor = .white

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveBtn(_ sender: Any) {
        
        
           let name = editName.text ?? ""
           let email = editEmail.text ?? ""
           let number = editNumber.text ?? ""
           
           UserDefaults.standard.set(name, forKey: "name")
           UserDefaults.standard.set(email, forKey: "email")
           UserDefaults.standard.set(number, forKey: "number")
           
        
           if let image = editImage.image,
              let data = image.jpegData(compressionQuality: 0.8) {
               UserDefaults.standard.set(data, forKey: "profileImage")
           }
           
        
           delegate?.didUpdateProfile(name: name, email: email, number: number, image: editImage.image)
           
           self.dismiss(animated: true)
    }
    
    @IBAction func changeImage(_ sender: Any) {
        
        let picker = UIImagePickerController()
            picker.sourceType = .photoLibrary
            picker.delegate = self
            present(picker, animated: true)
    }
    
}

extension EditProfileViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[.originalImage] as? UIImage {
            editImage.image = image
        }
        
        picker.dismiss(animated: true)
    }
}
