//
//  CommentVC+TableView.swift
//  HomeDesignProject2
//
//  Created by Monafh on 09/04/1443 AH.
//

import Foundation
import UIKit

extension CommentViewController : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrName.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = arrName[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    // move the commit
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        arrName.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    // swipe .... R
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .normal, title: "Delete".localizble) { action, view, completionHandler in
            self.arrName.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
            
            
            completionHandler(true)
        }
        let likeAction = UIContextualAction(style: .normal, title: " ") { action, view, completionHandler in
            
            completionHandler(true)
        }
        
        
        deleteAction.image = UIImage(systemName: "trash")
        likeAction.image = UIImage(systemName: "heart")
        likeAction.backgroundColor = .gray
        return UISwipeActionsConfiguration(actions: [deleteAction, likeAction])
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}

