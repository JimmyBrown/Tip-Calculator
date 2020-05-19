//
//  Style Guide.swift
//  TipCalc
//
//  Created by Jimmy on 5/18/20.
//  Copyright © 2020 Jimmy. All rights reserved.
//

import UIKit

extension UIView {
    
    func addCornerRadius(_ radius: CGFloat = 4) {
        self.layer.cornerRadius = radius
    }
    
    func addAccentBorder(width: CGFloat = 1, color: UIColor = .orange) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
}
