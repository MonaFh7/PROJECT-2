//
//  SectionTableViewController.swift
//  HomeDesignProject2
//
//  Created by Monafh on 09/04/1443 AH.
//

import UIKit

class SectionTableViewController: UITableViewController {
    
    //    connect Label Tital for Section & another two Label For every section & insert Image ...
    @IBOutlet weak var titalSectionHomeDesign: UILabel!
    @IBOutlet weak var interiorDesignImage: UIImageView!
    @IBOutlet weak var interiorDesignLabel: UILabel!
    @IBOutlet weak var designPlanningImage: UIImageView!
    @IBOutlet weak var designPlanningLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        insert text & color for Organization .....
        titalSectionHomeDesign.text = "Home Design".localizble
        titalSectionHomeDesign.textColor = .init(rgb: 0xFF5A6E6F)
        
        interiorDesignLabel.text = "Interior Design".localizble
        interiorDesignImage.image = UIImage(named: "interiorDesign")
        designPlanningLabel.text = "House Design Planning".localizble
        designPlanningImage.image = UIImage(named: "planningDesign")
        tableView.backgroundColor = UIColor(rgb: 0xFFE2CEBF)
        
    }
    
    //     segue to determination way to the Next page for each ....
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "interiorSegue" {
            
            
        } else {
            
            
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            performSegue(withIdentifier: "interiorSegue", sender: nil)
        } else {
            performSegue(withIdentifier: "planingSegue", sender: nil)
        }
        
    }
    
    // MARK: - Table view data source
    //     func for determination number section & row & heigh for row ...
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250    }
    
    
}


