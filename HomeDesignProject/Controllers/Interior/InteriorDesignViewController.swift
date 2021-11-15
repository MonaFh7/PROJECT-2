//
//  InteriorDesignViewController.swift
//  HomeDesignProject2
//
//  Created by Monafh on 09/04/1443 AH.
//

import UIKit

class InteriorDesignViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    // to show the Image clearly ....
    @IBOutlet weak var pageShowControl: UIPageControl!
    //    to show the image Horizontal...
    @IBOutlet weak var collectionView: UICollectionView!
    //    array For Image to each Section ....
    var collectionImages = [[UIImage(named: "Ex1")!,UIImage(named: "Ex2")!,UIImage(named: "EX3")!]]
    
    //    timer to show pictures ...
    var timer : Timer?
    var currentCellIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "3")!)
        
        collectionView.backgroundColor = .init(rgb: 0xFFE2CEBF)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        pageShowControl.numberOfPages = collectionImages.count
        timerMove()
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return collectionImages.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        collectionImages[section].count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "interiorCell", for: indexPath) as! InteriorCollectionViewCell
        cell.imagecollection.image = collectionImages[indexPath.section][indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    //    timer to show pictures ...
    func timerMove(){
        timer = Timer.scheduledTimer(timeInterval: 2 , target: self, selector: #selector(moveNextIndex), userInfo: nil, repeats: true)
    }
    //    useing If to show Next Image .... and repeti the Image ...
    @objc func moveNextIndex(){
        for collectionImage in collectionImages {
            
            
            if currentCellIndex < collectionImages.count - 1 {
                currentCellIndex += 1
            }else{
                currentCellIndex = 0
            }
            let numberOfSections = collectionImages.count - 1
            
            collectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: numberOfSections), at: .centeredHorizontally, animated: true)
            pageShowControl.currentPage = currentCellIndex
            
        }
    }
    
//     to Buteen and the way for them .....
    
    @IBAction func moreInfo(_ sender: Any) {
        performSegue(withIdentifier: "sectionInfo".localizble, sender: nil)
    }
    
    @IBAction func addComment(_ sender: Any) {
        performSegue(withIdentifier: "Add".localizble, sender: nil)
    }
    
}

