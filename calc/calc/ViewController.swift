
//
//  ViewController.swift
//  calc
//
//  Created by Kesh Gurung on 03/07/2022.
//

import UIKit

enum Operation: String {
    case Add = "+"
    case Subtract = "-"
    case Divide = "/"
    case Multiply = "*"
    case NULL = "Null"
}


class ViewController: UIViewController {

    @IBOutlet weak var calculatorResults: UILabel!
    

    var runningNumber:String = ""
    var leftValue: String = ""
    var rightValue: String = ""
    var result: String = ""
    var currentOperation: Operation = .NULL
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatorResults.text = "0"
       
       
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
//        allowing only 9 char anf no dot at last cond. on dotButton
        if runningNumber.count <= 8 {
        runningNumber += "\(sender.tag-1)"
         calculatorResults.text = runningNumber
        }
    }
    
    func clearAll(){
         runningNumber = ""
        calculatorResults.text = "0"
        leftValue = ""
        rightValue = ""
        currentOperation = .NULL
        result = ""
    }

    @IBAction func allClearButton(_ sender: Any) {
        clearAll()
    }

    @IBAction func dotButton(_ sender: Any) {
        if runningNumber.count <= 7 {
            runningNumber += "."
            calculatorResults.text = runningNumber
        }
    }
    
    @IBAction func divideButton(_ sender: Any) {
        operation(operation: .Divide)
    }
    
    
    @IBAction func multiplyButton(_ sender: Any) {
        operation(operation: .Multiply)
    }
    @IBAction func subtractButton(_ sender: Any) {
        operation(operation: .Subtract)
    }
    @IBAction func addButton(_ sender: Any) {
        operation(operation: .Add)
    }
    @IBAction func equalButton(_ sender: Any) {
        operation(operation: currentOperation)
    }
    
    func operation(operation: Operation){
        if currentOperation != .NULL {
            if runningNumber != ""{
                
                rightValue = runningNumber
                runningNumber = ""
                
                if currentOperation == .Add {
                    result = "\(Double(leftValue)! + Double(rightValue)!)"
                    
                }else if currentOperation == .Subtract {
                    result = "\(Double(leftValue)! - Double(rightValue)!)"
                    
                } else if currentOperation == .Multiply {
                    result = "\(Double(leftValue)! * Double(rightValue)!)"
                    
                } else if currentOperation == .Divide{
                result = "\(Double(leftValue)! / Double(rightValue)!)"
            
             }
//                operation on result after
                leftValue = result
                if (Double(result)!.truncatingRemainder(dividingBy: 1) == 0){
                    result = "\(Int(Double(result)!))"
                }
                calculatorResults.text = result
            }
            currentOperation = operation
        }
            else {
            leftValue = runningNumber
            runningNumber = ""
            currentOperation = operation
        }
    }
}
