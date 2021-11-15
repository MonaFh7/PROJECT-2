//
//  InteriorDesignViewControler.swift
//  HomeDesignProject2
//
//  Created by Monafh on 10/04/1443 AH.
//

import UIKit

class InteriorDesignViewControler: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var interiorArr = [IinteriorArrDesign]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "3")!)
        
        interiorArr.append(IinteriorArrDesign(title: "Furniture", photos:[UIImage(named: "Furniture1")! , UIImage(named: "Furniture2")!, UIImage(named: "Furniture3")!,UIImage(named: "Furniture4")!]))
        interiorArr.append(IinteriorArrDesign(title: "Lighting", photos:[UIImage(named: "light1")! , UIImage(named: "light2")!, UIImage(named: "light3")!, UIImage(named: "light4")!, UIImage(named: "planning5")!] ))
        interiorArr.append(IinteriorArrDesign(title: "Paints", photos:[UIImage(named: "Paints1")! , UIImage(named: "Paints2")!, UIImage(named: "Paints3")!, UIImage(named: "Paints4")!, UIImage(named: "Paints4")!] ))
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return interiorArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell") as! InteriorDesignTableViewCell
        let product = interiorArr[indexPath.row]
        cell.setupCell(title: product.title, arrPhoto: product.photos)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 360
    }
    
    
}
struct IinteriorArrDesign {
    
    let title : String
    let photos : [UIImage]
    
}


