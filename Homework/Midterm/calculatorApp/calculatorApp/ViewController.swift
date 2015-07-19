//
//  ViewController.swift
//  calculatorApp
//
//  Created by user on 7/14/15.
//  Copyright (c) 2015 Handy Debegon. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var calculationLabel: UILabel!
    var result = Float()
    var currentNumber = Float()
    
    var currentOperation = String()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        currentOperation = "="
        calculationLabel.text = ("\(result)")
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

    @IBAction func numberInputAction(sender: UIButton) {
        currentNumber = currentNumber*10 + Float(sender.titleLabel!.text!.toInt()!)
        calculationLabel.text = ("\(currentNumber)")
    }
    
    @IBAction func operationInputAction(sender: UIButton) {
        switch currentOperation {
        case "=":
            result = currentNumber
        case "+":
            result = result + currentNumber
        case "-":
            result = result - currentNumber
        case "x":
            result = result * currentNumber
        case "/":
            result = result / currentNumber
        default:
            println("error")
        }
        
        currentNumber = 0
        calculationLabel.text = ("\(result)")
        
        if(sender.titleLabel!.text == "=") {
            result = 0
        }
        
        currentOperation = sender.titleLabel!.text! as String!
    }
    
    
    @IBAction func allClearAction(sender: UIButton) {
        result = 0
        currentNumber = 0
        currentOperation = "="
        calculationLabel.text = ("\(result)")
    }
    
    
    @IBAction func clearAction(sender: UIButton) {
        currentNumber = result
        currentOperation = "="
        calculationLabel.text = ("\(result)")
    }
 
    func doubleFromString () -> Double {
        return (calculationLabel.text! as NSString).doubleValue
    }
    
    
    @IBAction func inverseAction(sender: UIButton) {
        var number = doubleFromString()
        number = -1 * number
        calculationLabel.text = "\(number)"
    }
    
    
    @IBAction func percentageAction(sender: UIButton) {
        var minus = "-"
        var wholeLabel = calculationLabel.text
        
        var range = wholeLabel?.rangeOfString(minus)
        
        if range == nil {
            var result = currentNumber/(100)
            calculationLabel.text = ("\(result)")
        } else {
            var result = currentNumber/(-100)
            calculationLabel.text = ("\(result)")
        }
    }
    
    
    @IBAction func periodAction(sender: UIButton) {
        sender.enabled = false
    }
    
 }
