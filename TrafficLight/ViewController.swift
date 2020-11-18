//
//  ViewController.swift
//  TrafficLight
//
//  Created by Andrey Silvestrov on 11/16/20.
//  Copyright © 2020 Andrey Silvestrov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redColor: UIView!
    @IBOutlet var yellowColor: UIView!
    @IBOutlet var greenColor: UIView!
    @IBOutlet var actionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColor.alpha = 0.3
        redColor.layer.cornerRadius = 60
        yellowColor.alpha = 0.3
        yellowColor.layer.cornerRadius = 60
        greenColor.alpha = 0.3
        greenColor.layer.cornerRadius = 60
        actionButton.layer.cornerRadius = 60
        actionButton.layer.borderWidth = 1.5
        actionButton.layer.borderColor = UIColor.systemBlue.cgColor
        actionButton.clipsToBounds = true
        
    }

    @IBAction func actionButtomPressed() {
        actionButton.setTitle("NEXT", for: .normal)
        if redColor.alpha < 1 && yellowColor.alpha < 1 {
            redColor.alpha = 1
            greenColor.alpha = 0.3
        } else if yellowColor.alpha < 1 && greenColor.alpha < 1 {
            yellowColor.alpha = 1
            redColor.alpha = 0.3
        } else if greenColor.alpha < 1 && redColor.alpha < 1 {
            greenColor.alpha = 1
            yellowColor.alpha = 0.3
        }

    }
    
}

