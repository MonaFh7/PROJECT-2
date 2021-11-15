//
//  CreateAccountViewController.swift
//  HomeDesignProject2
//
//  Created by Monafh on 09/04/1443 AH.
//

import UIKit

class CreateAccountViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var typeArray = ["",""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        typeArray.removeAll()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        if typeArray.count == 0 {
            tableView.isHidden = true
            
// Image Show Temporarily ......
            let imgErrorPhoto = UIImageView(frame: CGRect(x: 50, y: 80, width: self.view.frame.width-130 , height: 700))
            imgErrorPhoto.image = UIImage(named: "CreateAccount")
            self.view.addSubview(imgErrorPhoto)
            
//             Massage For Image .....
            let lblMassage = UILabel(frame: CGRect(x: imgErrorPhoto.frame.minX , y: imgErrorPhoto.frame.maxY - 200 , width: imgErrorPhoto.frame.width + 10, height: 40))
            lblMassage.text = " WHOOPS!  We Couldn't Find Page".localizble
            self.view.addSubview(lblMassage)
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return typeArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellList", for: indexPath)
        cell.textLabel?.text = typeArray[indexPath.row]
        return cell
    }
    
}
