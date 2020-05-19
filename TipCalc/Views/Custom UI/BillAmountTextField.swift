//
//  BillAmountTextField.swift
//  TipCalc
//
//  Created by Jimmy on 5/18/20.
//  Copyright © 2020 Jimmy. All rights reserved.
//

import UIKit

class BillAmountTextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }
    
    func setupViews() {
        self.addCornerRadius(10)
        self.addAccentBorder()
        setupPlaceholderText()
    }
    
    func setupPlaceholderText() {
        let currentPlaceholder = self.placeholder
        self.attributedPlaceholder = NSAttributedString(string: currentPlaceholder ?? "")
    }
}
