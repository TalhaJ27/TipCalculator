//
//  ViewController.swift
//  TipCalculator
//
//  Created by Talha Jahangir
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var TipPercent: UISegmentedControl!
    @IBOutlet weak var SplitWith: UISegmentedControl!
    
   
    
    @IBAction func CalculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let TipPercentages = [0.15, 0.18, 0.2, 0.25]
        
        let TipAmount = bill * TipPercentages[TipPercent.selectedSegmentIndex]
        let Total = bill + TipAmount
        
       
        let SplitWithPeople = [2.0,3.0,4.0]
        let SplitAmount = Total/SplitWithPeople[SplitWith.selectedSegmentIndex]
        
    
        tipAmountLabel.text = String(format: "$%.2f", TipAmount)
        TotalBill.text = String(format: "$%.2f", Total)
        BillPerPerson.text = String(format: "$%.2f", SplitAmount)
       
            
        
        
    }
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    
    @IBOutlet weak var NumberOfPeopleLabel: UILabel!
    
    
    @IBOutlet weak var TotalBill: UILabel!
    @IBOutlet weak var BillPerPerson: UILabel!
    
    override func viewDidLoad() {
        
        billAmountTextField.becomeFirstResponder()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer (target: self, action:#selector(dismisskeyboard))
                self.view.addGestureRecognizer(tap)
                // Do any additional setup after loading the view.

            }
            //dismiss keyboard
            @objc func dismisskeyboard(){
                self.view.endEditing(true)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

