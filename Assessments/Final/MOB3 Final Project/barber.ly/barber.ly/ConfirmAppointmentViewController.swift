//
//  ConfirmAppointmentViewController.swift
//  barber.ly
//
//  Created by user on 8/23/15.
//  Copyright (c) 2015 Handy Debegon. All rights reserved.
//

import UIKit

class ConfirmAppointmentViewController: UIViewController
{
    var username: String?
    var hairtype: String?
    var hairStyle: String?
    var dateTime: String?
    var address: String?
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var hairtypeLabel: UILabel!
    @IBOutlet weak var hairstyleLabel: UILabel!
    @IBOutlet weak var dateTimeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let customerName = username {
            usernameLabel.text = customerName
        }
        
        if let customerHairType = hairtype {
            hairstyleLabel.text = "Hair type: \(customerHairType)"
        }
        
        if let customerHairStyle = hairStyle {
            hairstyleLabel.text = "Requesting: \(customerHairStyle)"
        }
        
        if let appointmentInfo = dateTime {
            dateTimeLabel.text = appointmentInfo
        }
        
        if let customerAddress = address {
            addressLabel.text = "Location: \(customerAddress)"
        }
        
    }
 

}
