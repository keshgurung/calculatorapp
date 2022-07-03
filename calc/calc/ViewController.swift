//
//  ViewController.swift
//  calc
//
//  Created by Kesh Gurung on 03/07/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculatorResults: UILabel!
    
    var calcValue: String = ""
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        // Do any additional setup after loading the view.
    }

    func clearAll(){
        calcValue = ""
        calculatorResults.text = ""
    }
    
    @IBAction func allClearButton(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func equalsButton(_ sender: Any) {
       let expression = NSExpression(format: calcValue)
        
       let result = expression.expressionValue(with: nil, context: nil) as! Double
       let resultString = formatResult(result: result)
        calculatorResults.text = resultString
        
        
    }
    
    func formatResult(result: Double) -> String {
        if (result.truncatingRemainder(dividingBy: 1) == 0){
            return String(format: "%.0f", result)
        }
        else{
            return String(format: "%.2f", result)
        }
    }
    
    func calcFunctionValue(value: String){
        calcValue = calcValue + value
        calculatorResults.text = calcValue
    }
    
    
    @IBAction func divideButton(_ sender: Any) {
        calcFunctionValue(value: "/")
    }
    
    
    @IBAction func multiplyButton(_ sender: Any) {
        calcFunctionValue(value: "*")
    }
    
    @IBAction func subtractButton(_ sender: Any) {
        calcFunctionValue(value: "-")
    }
    
    
    @IBAction func addButton(_ sender: Any) {
        calcFunctionValue(value: "+")
        
    }
    
    
    
    @IBAction func dotButton(_ sender: Any) {
        calcFunctionValue(value: ".")
    }
    
    
    @IBAction func zeroButton(_ sender: Any) {
        calcFunctionValue(value: "0")
    }
    
    
    
    
    @IBAction func oneButton(_ sender: Any) {
        calcFunctionValue(value: "1")
    }
    
    
    @IBAction func twoButton(_ sender: Any) {
        calcFunctionValue(value: "2")
    }
    
    
    @IBAction func threeButton(_ sender: Any) {
        calcFunctionValue(value: "3")
    }
    
    
    
    
    @IBAction func fourButton(_ sender: Any) {
        calcFunctionValue(value: "4")
    }
    
    
    @IBAction func fiveButton(_ sender: Any) {
        calcFunctionValue(value: "5")
    }
    
    
    @IBAction func sixButton(_ sender: Any) {
        calcFunctionValue(value: "6")
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        calcFunctionValue(value: "7")
    }
    
    
    @IBAction func eightButton(_ sender: Any) {
        calcFunctionValue(value: "8")
    }
    
    @IBAction func nineButton(_ sender: Any) {
        calcFunctionValue(value: "9")
    }
    
}

