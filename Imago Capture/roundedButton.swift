//
//  roundedButton.swift
//  Imago Capture
//
//  Created by ios6 on 5/4/18.
//  Copyright © 2018 QuickScape. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton:UIButton {
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    //Normal state bg and border
    @IBInspectable var normalBorderColor: UIColor? {
        didSet {
            layer.borderColor = normalBorderColor?.cgColor
        }
    }
    
    @IBInspectable var normalBackgroundColor: UIColor? {
        didSet {
        }
    }
    
    
    //Highlighted state bg and border
    @IBInspectable var highlightedBorderColor: UIColor?
    
    @IBInspectable var highlightedBackgroundColor: UIColor? {
        didSet {
            setBgColorForState(color: highlightedBackgroundColor, forState: .highlighted)
        }
    }
    
    
    private func setBgColorForState(color: UIColor?, forState: UIControlState){
        if color != nil {
            
        }
        else {
            setBackgroundImage(nil, for: forState)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = layer.frame.height / 2
        clipsToBounds = true
        
        if borderWidth > 0 {
  
          if state == .highlighted && highlightedBorderColor != nil{
                layer.borderColor = highlightedBorderColor!.cgColor
            }
        }
    }
    
}

