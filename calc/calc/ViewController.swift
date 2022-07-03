//
//  ViewController.swift
//  calc
//
//  Created by Kesh Gurung on 03/07/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculatorResults: UILabel!
    
    var calculatorRun: String = ""
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        // Do any additional setup after loading the view.
    }

    func clearAll(){
        calculatorRun = ""
        calculatorRun.text = ""
        calculatorResult.text=""
    }
    
    @IBAction func allClearButton(_ sender: Any) {
        clearAll()
    }
    
    
    @IBAction func divideButton(_ sender: Any) {
    }
    
    
    @IBAction func multiplyButton(_ sender: Any) {
    }
    
    @IBAction func subtractButton(_ sender: Any) {
    }
    
    
    func calcAdd(value: String){
        calculatorRun = calculatorRun + value
        calculatorRun.te
    }
    @IBAction func addButton(_ sender: Any) {
        
    }
    
    
    
    @IBAction func equalsButton(_ sender: Any) {
    }
    
    
    @IBAction func dotButton(_ sender: Any) {
    }
    
    
    @IBAction func zeroButton(_ sender: Any) {
    }
    
    
    
    
    @IBAction func oneButton(_ sender: Any) {
    }
    
    
    @IBAction func twoButton(_ sender: Any) {
    }
    
    
    @IBAction func threeButton(_ sender: Any) {
    }
    
    
    
    @IBAction func fourButton(_ sender: Any) {
    }
    
    
    @IBAction func fiveButton(_ sender: Any) {
    }
    
    
    @IBAction func sixButton(_ sender: Any) {
    }
    
    @IBAction func sevenButton(_ sender: Any) {
    }
    
    
    @IBAction func eightButton(_ sender: Any) {
    }
    
    @IBAction func nineButton(_ sender: Any) {
    }
    
}

