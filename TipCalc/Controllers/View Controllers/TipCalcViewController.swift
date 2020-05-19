//
//  TipCalcViewController.swift
//  TipCalc
//
//  Created by Jimmy on 5/18/20.
//  Copyright © 2020 Jimmy. All rights reserved.
//

import UIKit

class TipCalcViewController: UIViewController {
    
    // MARK: - Properties
    var billAmount: Double = 0.0
    var billPlusTipAmount: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Outlets
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var enterBillAmountTextField: BillAmountTextField!
    
    // MARK: - Actions
    @IBAction func fifteenPercentButtonTapped(_ sender: Any) {
        tipFifteenPercent()
    }
    
    @IBAction func eighteenPercentButtonTapped(_ sender: Any) {
        tipEighteenPercent()
    }
    
    @IBAction func twentyPercentButtonTapped(_ sender: Any) {
        tipTwentyPercent()
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        enterBillAmountTextField.text = ""
    }
    
    func tipFifteenPercent() {
        let billAmount = Double(enterBillAmountTextField.text!) ?? 0
        let total = billAmount + (billAmount * 0.15)
        enterBillAmountTextField.text = convertDoubleToCurrency(amount: total)
        billAmountLabel.text = "You Pay"
    }
    
    func tipEighteenPercent() {
        let billAmount = Double(enterBillAmountTextField.text!) ?? 0
        let total = billAmount + (billAmount * 0.18)
        enterBillAmountTextField.text = convertDoubleToCurrency(amount: total)
        billAmountLabel.text = "You Pay"
    }
    
    func tipTwentyPercent() {
        let billAmount = Double(enterBillAmountTextField.text!) ?? 0
        let total = billAmount + (billAmount * 0.20)
        enterBillAmountTextField.text = convertDoubleToCurrency(amount: total)
        billAmountLabel.text = "You Pay"
    }
    
    func convertDoubleToCurrency(amount: Double) -> String{
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.locale = Locale.current
        return numberFormatter.string(from: NSNumber(value: amount))!
    }
}
