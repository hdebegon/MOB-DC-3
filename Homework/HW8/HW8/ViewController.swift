//
//  ViewController.swift
//  HW8
//
//  Created by user on 7/29/15.
//  Copyright (c) 2015 Handy Debegon. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        task1()
        task2()
    }

    func task1() {
        
        Alamofire.request(.GET, "http://google.com")
            .response { (request, ResponseSerializer, data , error) -> Void in
            let source = NSString(data: data!, encoding: NSUTF8StringEncoding)
            println(source)
        }
    }
    
    func task2() {
            
        Alamofire.request(.GET, "http://ahdjkahdjhkjahfjahj.com")
            .response { (request, ResponseSerializer, data , error) -> Void in
                if let error = error {
                    println(error)
                    println("there is an error")
                } else {
                    println("No error")
                }

        }
    }

}

