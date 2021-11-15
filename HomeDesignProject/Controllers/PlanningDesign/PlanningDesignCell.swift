//
//  planningDesignTableViewCell.swift
//  HomeDesignProject2
//
//  Created by Monafh on 09/04/1443 AH.
//

import UIKit

class PlanningDesignCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControll: UIPageControl!
    
    var arrPhoto = [UIImage]()
    //    timer to show pictures ...
    var timer : Timer?
    var currentCellIndex = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.addShadow(offset: CGSize(width: 0, height: 3), color: .black, radius: 2.0, opacity: 0.35)
        collectionView.backgroundColor = .init(rgb: 0xFFE2CEBF)
        self.backgroundColor = .init(rgb: 0xFFE2CEBF)
        collectionView.delegate = self
        collectionView.dataSource = self
        pageControll.numberOfPages = arrPhoto.count
        timerMove()
    }
    func setupCell (title : String , arrPhoto : [UIImage]){
        self.lblTitle.text = title
        self.arrPhoto = arrPhoto
        
    }
    //    timer to show pictures ...
    func timerMove(){
        timer = Timer.scheduledTimer(timeInterval: 2 , target: self, selector: #selector(moveNextIndex), userInfo: nil, repeats: true)
    }
    //    useing If to show Next Image .... and repeti the Image ...
    @objc func moveNextIndex(){
        if currentCellIndex < arrPhoto.count - 1{
            currentCellIndex += 1
        }else{
            currentCellIndex = 0
        }
        
        collectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
        pageControll.currentPage = currentCellIndex
    }
    
}
