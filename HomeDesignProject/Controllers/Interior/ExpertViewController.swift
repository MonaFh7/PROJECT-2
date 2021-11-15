//
//  ExpertViewController.swift
//  HomeDesignProject2
//
//  Created by Monafh on 10/04/1443 AH.
//

import UIKit

class ExpertViewController: UIViewController  ,UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
//Definition of experts and thair informatiom
    var sectionsOfExpert = ["architectExper","civilEngineer"]
    var rowOfExpert = [["AbdAllh Khaild ", " architectExper Experience "," designing prototypes ","experience: 6 year","Assess: 7"],["Omer Saad ","civil Engineer Responsible for developing","structural projects in accordance","with international standards","experience: 12 year","Assess: 8"]]
    var newArr = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //         backgroundColor ....
        view.backgroundColor = UIColor(patternImage: UIImage(named: "3")!)
        tableView.delegate = self
        tableView.dataSource = self
        
    }
//    Repeat control and titel for hrader and Footer...
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionsOfExpert.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionsOfExpert[section]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowOfExpert[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "thecell", for: indexPath)
        cell.textLabel?.text = rowOfExpert[indexPath.section][indexPath.row]
        view.backgroundColor = UIColor(patternImage: UIImage(named: "3")!)
        return cell
    }
//     Title For Foot .....
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return " IT WILL SERVED BY : \(sectionsOfExpert[section])  "
    }
}

