//
//  planningDesignViewController.swift
//  HomeDesignProject2
//
//  Created by Monafh on 09/04/1443 AH.
//

import UIKit

class planningDesignViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var lastArr = [PlanningDesign]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "3")!)
        
        tableView.delegate = self
        tableView.dataSource = self
//        Information For Planning Design ....
        lastArr.append(PlanningDesign(title: "Villahouse", photos:[UIImage(named: "Villahouse1")! , UIImage(named: "Villahouse2")!, UIImage(named: "Villahouse3")!,UIImage(named: "Villahouse4")!,UIImage(named: "Villahouse4")!] ))
        lastArr.append(PlanningDesign(title: "Studio", photos:[UIImage(named: "planning1")! , UIImage(named: "planning2")!, UIImage(named: "planning3")!, UIImage(named: "planning4")!, UIImage(named: "planning5")!] ))
        lastArr.append(PlanningDesign(title: "Apartment", photos:[UIImage(named: "Paints1")! , UIImage(named: "Paints2")!, UIImage(named: "planning1")!, UIImage(named: "planning5")!] ))
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lastArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "imageCelltbl") as! PlanningDesignCell
        let product = lastArr[indexPath.row]
        cell.setupCell(title: product.title, arrPhoto: product.photos)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 360
    }
    
}
struct PlanningDesign {
    
    let title : String
    let photos : [UIImage]
    
}
