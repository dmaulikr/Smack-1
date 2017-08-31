//
//  RoundedButton.swift
//  Smack
//
//  Created by Virgil Nilson on 8/31/17.
//  Copyright © 2017 Virgil Nilson. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 5.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
}
