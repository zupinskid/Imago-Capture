//
//  AlertImage.swift
//  Imago Capture
//
//  Created by Kyle Micheal Scott Jr. on 5/22/18.
//  Copyright © 2018 QuickScape. All rights reserved.
//

import Foundation
import UIKit

extension UIAlertController {
    func addImage(image: UIImage) {
    let maxSize = CGSize(width: 245, height: 300)
    let imageSize = image.size
            
    var ratio: CGFloat!
    if (imageSize.width > imageSize.height) {
    ratio = maxSize.width / imageSize.width
    
    } else {
    ratio = maxSize.height / imageSize.height
    }
        
        let scaledSize = CGSize(width: imageSize.width * ratio, height: imageSize.height * ratio)
        
        let resizedImage = image.imageWithSize(scaledSize)
        
        let imageAction = UIAlertAction(title: "", style: .default, handler: nil)
        imageAction.isEnabled = false
        imageAction.setValue(resizedImage.withRenderingMode(.alwaysOriginal), forKey: "image")
        self.addAction(imageAction)
    }
  }
