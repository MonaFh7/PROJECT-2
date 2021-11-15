//
//  UIView.swift
//  HomeDesignProject2
//
//  Created by Monafh on 10/04/1443 AH.
//

import Foundation
import UIKit

extension UIView {
  func addShadow(offset: CGSize, color: UIColor, radius: CGFloat, opacity: Float) {
    layer.masksToBounds = false
    layer.shadowOffset = offset
    layer.shadowColor = color.cgColor
    layer.shadowRadius = radius
    layer.shadowOpacity = opacity
    let backgroundCGColor = backgroundColor?.cgColor
    backgroundColor = nil
    layer.backgroundColor = backgroundCGColor
  }
}
