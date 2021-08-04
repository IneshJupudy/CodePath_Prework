//
//  ViewController.swift
//  Prework
//
//  Created by Inesh Jupudy on 01/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var sliderLabel: UISlider!
    
    @IBOutlet weak var tipPercentage: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var NoOfPeople: UITextField!
    
    @IBOutlet weak var amountPerPerson: UILabel!
    
    var Total:Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func calculateTip(_ sender: UISlider) {
        //getting bill amount from input text field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipp = Int(sender.value)
        
        tipPercentage.text = String("\(tipp)" + "%")
        
        //tip calculation
        let tip = bill * Double(sender.value/100)
        let total = bill + tip
        Total = total
        
        tipAmountLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
    }
    
    @IBAction func calculateSplit(_ sender: UIButton) {
        let split = Total / Double(NoOfPeople.text!)!
        amountPerPerson.text = String(format:"$%.2f", split)
        
    }
    
}

