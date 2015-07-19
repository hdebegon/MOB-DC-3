//
//  SecondViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class SecondViewController: ExerciseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 2"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        /* TODO:
        Build four blue squares, 20 points wide, one in each corner of the screen. 
        They must stay in their respective corners on device rotation. 
        
        Use Autolayout.
        
        Your view should be in self.exerciseView, not self.view
        */
    
    
        let square1 = UIView()
        square1.setTranslatesAutoresizingMaskIntoConstraints(false)
        square1.backgroundColor = UIColor.blueColor()
        exerciseView.addSubview(square1)
        
        let metrics = ["width": 60, "height":60]
        let views = ["square1": square1]
        
        let square1WidthConstrainsts = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:|[square1(width)]", //H is horizontal
            options: NSLayoutFormatOptions.AlignAllLeft,
            metrics: metrics,
            views: views)
        
        let square1HeightConstrainsts = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|[square1(height)]", //V is vertical
            options: NSLayoutFormatOptions.AlignAllTop,
            metrics: metrics,
            views: views)
        
        exerciseView.addConstraints(square1WidthConstrainsts)
        exerciseView.addConstraints(square1HeightConstrainsts)

        
        //
        
    
        let square2 = UIView()
        square2.setTranslatesAutoresizingMaskIntoConstraints(false)
        square2.backgroundColor = UIColor.greenColor()
        exerciseView.addSubview(square2)
        
        let metrics2 = ["width": 60, "height":60]
        let views2 = ["square2": square2]
        
        let square2WidthConstrainsts = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:[square2(width)]|", //H is horizontal
            options: NSLayoutFormatOptions.AlignAllRight,
            metrics: metrics2,
            views: views2)
        
        let square2HeightConstrainsts = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|[square2(height)]", //V is vertical
            options: NSLayoutFormatOptions.AlignAllTop,
            metrics: metrics2,
            views: views2)
        
        exerciseView.addConstraints(square2WidthConstrainsts)
        exerciseView.addConstraints(square2HeightConstrainsts)
    
        
        //
        
        let square3 = UIView()
        square3.setTranslatesAutoresizingMaskIntoConstraints(false)
        square3.backgroundColor = UIColor.greenColor()
        exerciseView.addSubview(square3)
        
        let metrics3 = ["width": 60, "height":60]
        let views3 = ["square3": square3]
        
        let square3WidthConstrainsts = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:|[square3(width)]", //H is horizontal
            options: NSLayoutFormatOptions.AlignAllLeft,
            metrics: metrics3,
            views: views3)
        
        let square3HeightConstrainsts = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:[square3(height)]-(44)-|", //V is vertical
            options: NSLayoutFormatOptions.AlignAllBottom,
            metrics: metrics3,
            views: views3)
        
        exerciseView.addConstraints(square3WidthConstrainsts)
        exerciseView.addConstraints(square3HeightConstrainsts)
    
        
        
        //
        
        let square4 = UIView()
        square4.setTranslatesAutoresizingMaskIntoConstraints(false)
        square4.backgroundColor = UIColor.greenColor()
        exerciseView.addSubview(square4)
        
        let metrics4 = ["width": 60, "height":60]
        let views4 = ["square4": square4]
        
        let square4WidthConstrainsts = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:[square4(width)]|", //H is horizontal
            options: NSLayoutFormatOptions.AlignAllRight,
            metrics: metrics4,
            views: views4)
        
        let square4HeightConstrainsts = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:[square4(height)]-(44)-|", //V is vertical
            options: NSLayoutFormatOptions.AlignAllBottom,
            metrics: metrics4,
            views: views4)
        
        exerciseView.addConstraints(square4WidthConstrainsts)
        exerciseView.addConstraints(square4HeightConstrainsts)
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("three", sender: nil)
    }
}
