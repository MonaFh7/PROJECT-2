//
//  ViewController.swift
//  HomeDesignProject2
//
//  Created by Monafh on 08/04/1443 AH.
//

import UIKit

class HomeViewController: UIViewController {
    
    //    Label for Title & Description ..
    @IBOutlet weak var titelHomePage: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    //    Button for Register ..
    @IBOutlet weak var registerBut: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        Data formatting and filling for ( Label & Button )...
        
        titelHomePage.text = "HOME DESIGN".localizble
        titelHomePage.textColor = .init(rgb: 0xFF2c3842)
        titelHomePage.font = .boldSystemFont(ofSize: 35)
        //        Description For Home Page .......
        lblDescription.text = "The Field of interior Design and  House Design Planning achieve customer satisfaction through project or in an innovative and modern way.With expert consulting services".localizble
        lblDescription.textColor = .init(rgb: 0xFF2c3842)
        lblDescription.font = .italicSystemFont(ofSize: 22)
        
    }
    // Button for register ...
    @IBAction func registerButton(_ sender: Any) {
    }
    
}

