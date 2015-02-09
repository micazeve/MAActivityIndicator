//
//  ViewController.swift
//  MAActivityIndicator-Demo
//
//  Created by Michaël Azevedo on 09/02/2015.
//  Copyright (c) 2015 Michaël Azevedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MAActivityIndicatorViewDelegate {

    //MARK: - Properties
    
    @IBOutlet var viewForActivity1: UIView!
    
    @IBOutlet var sliderNbCircles: UISlider!
    @IBOutlet var labelNbCircles: UILabel!
    
    @IBOutlet var sliderMaxRadius: UISlider!
    @IBOutlet var labelMaxRadius: UILabel!
    
    @IBOutlet var sliderSpacing: UISlider!
    @IBOutlet var labelSpacing: UILabel!
    
    var indicatorView1 : MAActivityIndicatorView!
    
    
    // MARK: - Init methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        // dispatch async is used in order to have the frame OK (else you have to declare this in viewDidAppear() )
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            
            self.indicatorView1 = MAActivityIndicatorView(frame: self.viewForActivity1.frame)
            self.indicatorView1.defaultColor = UIColor.redColor()
            self.indicatorView1.animationDuration    = 1
            self.indicatorView1.numberOfCircles      = 15
            self.indicatorView1.maxRadius            = 40
            self.indicatorView1.delegate = self
           // self.indicatorView1.backgroundColor = UIColor.lightGrayColor()
            self.indicatorView1.startAnimating()
            self.view.addSubview(self.indicatorView1)
            
        })
    }
    
    //MARK: - Action methods
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        if sender == sliderNbCircles {
            let nbCircles = Int(sliderNbCircles.value)
            labelNbCircles.text = "nb Circles : \(nbCircles)"
            indicatorView1.numberOfCircles = nbCircles
        } else if sender == sliderMaxRadius {
            let maxRadius = CGFloat(sliderMaxRadius.value)
            labelMaxRadius.text =  String(format:"max radius : %3.2f", Double(maxRadius))
            indicatorView1.maxRadius = maxRadius
        } else if sender == sliderSpacing {
            let spacing = CGFloat(sliderSpacing.value)
            labelSpacing.text = String(format: "spacing : %3.2f", Double(spacing))
            indicatorView1.internalSpacing = spacing
        }
    }

    //MARK: - MAActivityIndicatorViewDelegate protocol conformance
    
    func activityIndicatorView(activityIndicatorView: MAActivityIndicatorView, circleBackgroundColorAtIndex index: NSInteger) -> UIColor {
        
        let R = CGFloat(arc4random() % 256)/255
        let G = CGFloat(arc4random() % 256)/255
        let B = CGFloat(arc4random() % 256)/255
        
        return UIColor(red: R, green: G, blue: B, alpha: 1)
    }
}

