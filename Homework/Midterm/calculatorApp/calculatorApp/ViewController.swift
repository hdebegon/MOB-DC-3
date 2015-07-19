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
    
    var storedValue: Float = 0


    
    //label
    @IBOutlet weak var calculationLabel: UILabel!
    var firstNumber = Float()
    var secondNumber = Float()
    var result = Float()
    
    //numbers
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    
    //calculation signs
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    
    //other signs
    @IBOutlet weak var allClearButton: UIButton!
    @IBOutlet weak var inverseButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var decimalButton: UIButton!
    
    
    //numbers
    @IBAction func zeroAction(sender: UIButton) {
        if calculationLabel.text == "0" {
            calculationLabel.text = sender.titleLabel?.text
        } else {
            if let anotherButton = sender.titleLabel?.text {
                calculationLabel.text  = calculationLabel.text! + anotherButton
            } else {
                calculationLabel.text  = calculationLabel.text
            }
        }
    }
    
    @IBAction func oneAction(sender: UIButton) {
        if calculationLabel.text == "0" {
            calculationLabel.text = "1"
        } else if calculationLabel.text == "1" {
            calculationLabel.text = sender.titleLabel?.text
        } else {
            if let anotherButton = sender.titleLabel?.text {
                calculationLabel.text  = calculationLabel.text! + anotherButton
            } else {
                calculationLabel.text  = calculationLabel.text
            }
        }
    }
    
    @IBAction func twoAction(sender: UIButton) {
        if calculationLabel.text == "0" {
            calculationLabel.text = "2"
        } else if calculationLabel.text == "2" {
            calculationLabel.text = sender.titleLabel?.text
        } else {
            if let anotherButton = sender.titleLabel?.text {
                calculationLabel.text  = calculationLabel.text! + anotherButton
            } else {
                calculationLabel.text  = calculationLabel.text
            }
        }
    }
    
    @IBAction func threeAction(sender: UIButton) {
        if calculationLabel.text == "0" {
            calculationLabel.text = "3"
        } else if calculationLabel.text == "3" {
            calculationLabel.text = sender.titleLabel?.text
        } else {
            if let anotherButton = sender.titleLabel?.text {
                calculationLabel.text  = calculationLabel.text! + anotherButton
            } else {
                calculationLabel.text  = calculationLabel.text
            }
        }
    }
    
    @IBAction func fourAction(sender: UIButton) {
        if calculationLabel.text == "0" {
            calculationLabel.text = "4"
        } else if calculationLabel.text == "4" {
            calculationLabel.text = sender.titleLabel?.text
        } else {
            if let anotherButton = sender.titleLabel?.text {
                calculationLabel.text  = calculationLabel.text! + anotherButton
            } else {
                calculationLabel.text  = calculationLabel.text
            }
        }
    }
    
    @IBAction func fiveAction(sender: UIButton) {
        if calculationLabel.text == "0" {
            calculationLabel.text = "5"
        } else if calculationLabel.text == "5" {
            calculationLabel.text = sender.titleLabel?.text
        } else {
            if let anotherButton = sender.titleLabel?.text {
                calculationLabel.text  = calculationLabel.text! + anotherButton
            } else {
                calculationLabel.text  = calculationLabel.text
            }
        }
    }
    
    @IBAction func sixAction(sender: UIButton) {
        if calculationLabel.text == "0" {
            calculationLabel.text = "6"
        } else if calculationLabel.text == "6" {
            calculationLabel.text = sender.titleLabel?.text
        } else {
            if let anotherButton = sender.titleLabel?.text {
                calculationLabel.text  = calculationLabel.text! + anotherButton
            } else {
                calculationLabel.text  = calculationLabel.text
            }
        }
    }
    
    @IBAction func sevenAction(sender: UIButton) {
        if calculationLabel.text == "0" {
            calculationLabel.text = "7"
        } else if calculationLabel.text == "7" {
            calculationLabel.text = sender.titleLabel?.text
        } else {
            if let anotherButton = sender.titleLabel?.text {
                calculationLabel.text  = calculationLabel.text! + anotherButton
            } else {
                calculationLabel.text  = calculationLabel.text
            }
        }
    }
    
    @IBAction func eightAction(sender: UIButton) {
        if calculationLabel.text == "0" {
            calculationLabel.text = "8"
        } else if calculationLabel.text == "8" {
            calculationLabel.text = sender.titleLabel?.text
        } else {
            if let anotherButton = sender.titleLabel?.text {
                calculationLabel.text  = calculationLabel.text! + anotherButton
            } else {
                calculationLabel.text  = calculationLabel.text
            }
        }
    }
    
    @IBAction func nineAction(sender: UIButton) { //need to be able to repeat a number from the start
        if calculationLabel.text == "0" {
            calculationLabel.text = "9"
        } else if calculationLabel.text == "9" {
            calculationLabel.text = sender.titleLabel?.text
        } else {
            if let anotherButton = sender.titleLabel?.text {
                calculationLabel.text  = calculationLabel.text! + anotherButton
            } else {
                calculationLabel.text  = calculationLabel.text!
            }
        }
    }
    
    //calculation signs
    @IBAction func divideAction(sender: UIButton) {
        calculationLabel.text = "/"
        //switch (sender.tag)
    }
    
    @IBAction func multiplyAction(sender: UIButton) {
            calculationLabel.text = "x"
    }
    
    @IBAction func plusAction(sender: UIButton) {
        calculationLabel.text = "+"
    }
    
    @IBAction func minusAction(sender: UIButton) {
        calculationLabel.text = "-"
    }
    
    @IBAction func equalAction(sender: UIButton) {
        calculationLabel.text = "="
    }
    
    //other signs
    @IBAction func allClearAction(sender: UIButton) {
        calculationLabel.text = "0"
    }
    
    //finish this, need to figure out how to remove the MINUS SIGN. IT SHOULD BE AT THE OTH INDEX
    @IBAction func inverseAction(sender: UIButton) {
        var minus = "-"
        var allCharacters = calculationLabel.text
        
        var range = allCharacters?.rangeOfString(minus)
        
        if range == nil {
            calculationLabel.text = minus + "\(allCharacters!)"
        } else if range != nil {
            println("there is a minus sign")
//            calculationLabel.text = "\(allCharacters!)"
            var myString = calculationLabel.text! as NSString
            var arr = Array(arrayLiteral: myString)
            var removeMinus = arr.removeAtIndex(0)
            println(removeMinus)
        }

        
        
//        var labelNumber = calculationLabel.text!
//        if calculationLabel.text != "-"  {
//           calculationLabel.text = "-" + "\(labelNumber)"
//        } else {
//           calculationLabel.text = "2"
//        }
    }
    
    @IBAction func percentageAction(sender: UIButton) {
        var percentage = calculationLabel.text?.toInt()
        var result = Double(percentage!) / 100
        calculationLabel.text = "\(result)"
    }
    
    @IBAction func clearAction(sender: UIButton) {
        calculationLabel.text = "Clear" //need to remove the last 2 items. "5 + 3", remove "+ and 3" when C is clicked.
    }
    
    /*let textstring = label.text as! NSString
        if(textstring.containsString(".")) == false {
    
    
    var string = NSString(string: mySwiftString)
    string.doubleValue
    }

    */
    
    @IBAction func decimalAction(sender: UIButton) { //should only be able to use "decimal" ONCE
    
        var period = "."
        var allCharacters = calculationLabel.text
        
        var range = allCharacters?.rangeOfString(period)
        
        if range == nil {
            if calculationLabel.text == "." {
                calculationLabel.text = sender.titleLabel?.text
            } else {
                if let anotherButton = sender.titleLabel?.text {
                    calculationLabel.text  = calculationLabel.text! + anotherButton
                }
            }
            
            if calculationLabel.text == "0" {
                calculationLabel.text = "0."
            }
        }
        
    }

     override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.setNeedsStatusBarAppearanceUpdate()
        
        calculationLabel.text = "0"
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    // Needed in order to make the default labels, up top, white
    }

}
