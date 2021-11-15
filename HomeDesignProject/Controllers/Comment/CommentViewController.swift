//
//  CommentViewController.swift
//  HomeDesignProject2
//
//  Created by Monafh on 09/04/1443 AH.
//

import UIKit

class CommentViewController: UIViewController  {
    
    @IBOutlet weak var textComment: UITextField!
    @IBOutlet weak var commentTableView: UITableView!
    //    refresh for view ....
    let refreshForControl = UIRefreshControl()
    var arrName = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "3")!)
        commentTableView.delegate = self
        commentTableView.dataSource = self
    }
    
    @IBAction func editButten(_ sender: Any) {
        commentTableView.isEditing = !commentTableView.isEditing
        
    }
//     Butten For adding ....
    @IBAction func addComment(_ sender: Any) {
        if let text = textComment.text {
            arrName.append(text)
            let indePathFor = IndexPath(row: arrName.count - 1, section: 0)
            commentTableView.insertRows(at: [indePathFor], with: .automatic)
            commentTableView.endUpdates()
            textComment.text = ""
        }
    }
}

