//
//  LoginViewController.swift
//  HomeDesignProject2
//
//  Created by Monafh on 08/04/1443 AH.
//

import UIKit

class LoginViewController: UIViewController {
    
    //     Label For SignIn & two TextField For (Email,Password) ...
    @IBOutlet weak var signInLabel: UILabel!
    @IBOutlet weak var userEmail: UITextField!
    @IBOutlet weak var password: UITextField!
    
    //     information about User ...
    let theUser = User(nickName: "Monafh".localizble, Email: "Monafh@User.com", age: 20, phonNumber: 96605593, Address: "5678,Street", isBlocked: false, PassWord: "Monafh")
    let manager = User(nickName: "Admin", Email: "NoNo34@User.com", age: 40, phonNumber: 96605056, Address: "Hail.342", isBlocked: true, PassWord: "Admin" )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        Format the Label & TextField
        signInLabel.text = "  Sign In".localizble
        signInLabel.textColor = .init(rgb: 0xFF8B4513)
        signInLabel.font = .boldSystemFont(ofSize: 25)
        
        userEmail.placeholder = "Name Or Email".localizble
        userEmail.textColor = .init(rgb: 0xFF5A6E6F)
        password.placeholder = "Password".localizble
        password.textColor = .init(rgb: 0xFF5A6E6F)
        
    }
    //    Action For Button & the way To Next Page with useing if ....
    @IBAction func logInButton(_ sender: UIButton) {
        
        if (userEmail.text == theUser.nickName) && (password.text == theUser.PassWord) {
            
            performSegue(withIdentifier: "sectionHomeDesign".localizble, sender: nil)
            
        } else {
            
            let alert = UIAlertController(title: "Error".localizble, message: "Email or Password is Incorrect".localizble, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
            
        }
        
    }
    
    
}
