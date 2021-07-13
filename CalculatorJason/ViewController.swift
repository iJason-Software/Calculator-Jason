//
//  ViewController.swift
//  CalculatorJason
//
//  Created by build-server on 7/5/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var clearButtom: UIButton!
    @IBOutlet weak var plusMinusButtom: UIButton!
    @IBOutlet weak var percentageButtom: UIButton!
    @IBOutlet weak var divideButtom: UIButton!
    @IBOutlet weak var timesButtom: UIButton!
    @IBOutlet weak var minusButtom: UIButton!
    @IBOutlet weak var plusButtom: UIButton!
    @IBOutlet weak var equalButtom: UIButton!
    @IBOutlet weak var pointButtom: UIButton!
    @IBOutlet weak var zeroButtom: UIButton!
    @IBOutlet weak var oneButtom: UIButton!
    @IBOutlet weak var twoButtom: UIButton!
    @IBOutlet weak var threeButtom: UIButton!
    @IBOutlet weak var fourButtom: UIButton!
    @IBOutlet weak var fiveButtom: UIButton!
    @IBOutlet weak var sixButtom: UIButton!
    @IBOutlet weak var sevenButtom: UIButton!
    @IBOutlet weak var eightButtom: UIButton!
    @IBOutlet weak var nineButtom: UIButton!
    @IBOutlet weak var viewCalculator: UIView!
    @IBOutlet weak var viewRespuesta: UIView!
    @IBOutlet weak var calculatorOperation: UILabel!

    var operationResult = 0
    var numberLabel = Double(0)
    var beforeNumber = Double(0)
    var effectuateMath = false
        
    override func viewDidLoad() {
     super.viewDidLoad()
        clearButtom.layer.cornerRadius = clearButtom.frame.width / 2
        plusMinusButtom.layer.cornerRadius = plusMinusButtom.frame.width / 2
        percentageButtom.layer.cornerRadius = percentageButtom.frame.width / 2
        divideButtom.layer.cornerRadius = divideButtom.frame.width / 2
        timesButtom.layer.cornerRadius = timesButtom.frame.width / 2
        minusButtom.layer.cornerRadius = minusButtom.frame.width / 2
        plusButtom.layer.cornerRadius = plusButtom.frame.width / 2
        equalButtom.layer.cornerRadius = equalButtom.frame.width / 2
        pointButtom.layer.cornerRadius = pointButtom.frame.width / 2
        zeroButtom.layer.cornerRadius = 20
        zeroButtom.layer.masksToBounds = true
        oneButtom.layer.cornerRadius = oneButtom.frame.width / 2
        twoButtom.layer.cornerRadius = twoButtom.frame.width / 2
        threeButtom.layer.cornerRadius = threeButtom.frame.width / 2
        fourButtom.layer.cornerRadius = fourButtom.frame.width / 2
        fiveButtom.layer.cornerRadius = fiveButtom.frame.width / 2
        sixButtom.layer.cornerRadius = sixButtom.frame.width / 2
        sevenButtom.layer.cornerRadius = sevenButtom.frame.width / 2
        eightButtom.layer.cornerRadius = eightButtom.frame.width / 2
        nineButtom.layer.cornerRadius = nineButtom.frame.width / 2
        nineButtom.layer.masksToBounds = true
        clearAll()
        
    }
    
    func clearAll () {
        calculatorOperation.text = ""
        enableButtomsOperations()
        beforeNumber = Double(0)
        numberLabel = Double(0)
        effectuateMath = false
    }
    

    func enableButtomsOperations () {
        plusButtom.isEnabled = true; plusButtom.backgroundColor = .systemOrange
        minusButtom.isEnabled = true; minusButtom.backgroundColor = .systemOrange
        timesButtom.isEnabled = true; timesButtom.backgroundColor = .systemOrange
        divideButtom.isEnabled = true; divideButtom.backgroundColor = .systemOrange
    }
  
    func DisableButtomsOperations () {
        plusButtom.isEnabled = false; plusButtom.backgroundColor = .systemRed
        minusButtom.isEnabled = false; minusButtom.backgroundColor = .systemRed
        timesButtom.isEnabled = false; timesButtom.backgroundColor = .systemRed
        divideButtom.isEnabled = false; divideButtom.backgroundColor = .systemRed
    }
    
    @IBAction func NumbersCalculator(_ sender: UIButton) {
        
        if effectuateMath == true {
            calculatorOperation.text = String(sender.tag-1)
            numberLabel = Double(calculatorOperation.text!)!
            effectuateMath = false
            enableButtomsOperations()
        }
        
        else {
        calculatorOperation.text = calculatorOperation.text! + String(sender.tag - 1)
        numberLabel  = Double(calculatorOperation.text!)!
        }
    }
    
    @IBAction func clearNumbers(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func operationLabels(_ sender: UIButton) {
                
        if calculatorOperation.text != "" && sender.tag != 10 && sender.tag != 15 {
            DisableButtomsOperations()
            beforeNumber = Double(calculatorOperation.text!)!
            
            switch sender.tag {
            
            case 11:
                calculatorOperation.text = "/"
            case 12:
                calculatorOperation.text = "x"
            case 13:
                calculatorOperation.text = "-"
            case 14:
                calculatorOperation.text = "+"
            default:
                calculatorOperation.text = ""
                
            }
            
            operationResult = sender.tag
            effectuateMath = true
      }
        
         else if sender.tag == 15 {
            
            if operationResult == 11 {
                calculatorOperation.text = String(beforeNumber / numberLabel)
            }
            
            else if operationResult == 12 {
                calculatorOperation.text = String(beforeNumber * numberLabel)
            }
            
            else if operationResult == 13 {
                calculatorOperation.text = String(beforeNumber - numberLabel)
            }
            
            else if operationResult == 14 {
                calculatorOperation.text = String(beforeNumber + numberLabel)
            }
        }
    }
}

