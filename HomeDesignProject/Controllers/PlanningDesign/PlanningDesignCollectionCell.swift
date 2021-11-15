//
//  planningDesignCVCell.swift
//  HomeDesignProject2
//
//  Created by Monafh on 09/04/1443 AH.
//

import UIKit

class PlanningDesignCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var planningImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        planningImage.contentMode = .scaleAspectFill
        planningImage.clipsToBounds = true
        planningImage.layer.cornerRadius = 12
        self.contentView.addShadow(offset: CGSize.init(width: 0, height: 3), color: UIColor.black, radius: 2.0, opacity: 0.35)
    }
}

