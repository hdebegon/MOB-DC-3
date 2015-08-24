//
//  CustomerRegistrationViewController.swift
//  barber.ly
//
//  Created by user on 7/28/15.
//  Copyright (c) 2015 Handy Debegon. All rights reserved.
//

import UIKit

class CompleteRequestViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var hairTypeTextField: UITextField!

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userAddress: UITextField!
    @IBOutlet weak var hairstyleRequest: UITextField!
    
    var customerHairType = ["Soft","Medium","Coarse"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // HAIR Picker
        let picker = UIPickerView()
        picker.delegate   = self
        picker.dataSource = self
        
        self.hairTypeTextField.inputView = picker
        
        
        // DATE Picker
        datePicker.addTarget(self, action: Selector("datePickerChanged:"), forControlEvents: UIControlEvents.ValueChanged)

    }
    
    // MARK: - Date Picker function
    func datePickerChanged(datePicker:UIDatePicker) {
        var dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
        dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        
        //var strDate = dateFormatter.stringFromDate(datePicker.date)
    }
    
    
    // MARK: - Hair Type Field Options
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1;
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return self.customerHairType.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!
    {
        return self.customerHairType[row];
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        self.hairTypeTextField.text = self.customerHairType[row];
        self.hairTypeTextField.endEditing(true)
    }
    
//    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        
//    }
//    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "viewConfirmation" {
            let destinationVC = segue.destinationViewController as! ConfirmAppointmentViewController
            destinationVC.username = userName.text
            destinationVC.dateTime = "\(datePicker.date)"
            destinationVC.hairtype = hairTypeTextField.text
            destinationVC.address = userAddress.text
            destinationVC.hairStyle = hairstyleRequest.text
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    // MARK: - DIDN'T HAVE TIME TO CLEAN UP THIS SECTION
    
    @IBOutlet weak var cusFirstName: UITextField!
    @IBOutlet weak var custLastName: UITextField!
    @IBOutlet weak var custPhone: UITextField!
    @IBOutlet weak var custEmail: UITextField!
    @IBOutlet weak var custPassword: UITextField!
    
    
    @IBOutlet weak var errorMessage: UILabel!
    
    
    @IBAction func saveCustomerRegistration(sender: UIButton) {
        
    }
    
    var customerFirstName = ""
    var customerLastName = ""
    var customerPhoneNumber = ""
    var customerEmail = ""
    var customerPassword = ""

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
