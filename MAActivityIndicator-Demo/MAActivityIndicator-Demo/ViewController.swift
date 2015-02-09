//
//  ViewController.swift
//  MAActivityIndicator-Demo
//
//  Created by Michaël Azevedo on 09/02/2015.
//  Copyright (c) 2015 Michaël Azevedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MAActivityIndicatorViewDelegate {

    
    // MARK: - Init methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let indicatorView = MAActivityIndicatorView()
        indicatorView.delegate              = self
        indicatorView.startAnimating()
        indicatorView.radius                = 20
        indicatorView.animationDuration     = 3
        indicatorView.numberOfCircles       = 5
        indicatorView.center = self.view.center
        
        self.view .addSubview(indicatorView)
    }


    //MARK: - MAActivityIndicatorViewDelegate protocol conformance
    
    func activityIndicatorView(activityIndicatorView: MAActivityIndicatorView, circleBackgroundColorAtIndex index: NSInteger) -> UIColor {
        
        let R = CGFloat(arc4random() % 256)/255
        let G = CGFloat(arc4random() % 256)/255
        let B = CGFloat(arc4random() % 256)/255
        
        return UIColor(red: R, green: G, blue: B, alpha: 1)
    }
}

