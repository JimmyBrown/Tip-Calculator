//
//  TipCalcButton.swift
//  TipCalc
//
//  Created by Jimmy on 5/18/20.
//  Copyright © 2020 Jimmy. All rights reserved.
//

import UIKit

class TipCalcButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }
    
    func setupViews() {
        self.addCornerRadius(10)
        self.backgroundColor = .lightOrange
        self.setTitleColor(.royalBlue, for: .normal)
        self.addAccentBorder()
    }
}
