//
//  InteriorCollectionViewCell.swift
//  HomeDesignProject2
//
//  Created by Monafh on 10/04/1443 AH.
//

import UIKit

class InteriorColectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var interioImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        interioImage.contentMode = .scaleAspectFill
        interioImage.clipsToBounds = true
        interioImage.layer.cornerRadius = 12
        self.contentView.addShadow(offset: CGSize.init(width: 0, height: 3), color: UIColor.black, radius: 2.0, opacity: 0.35)
        
    }
}


