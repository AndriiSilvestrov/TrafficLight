//
//  ViewController.swift
//  TrafficLight
//
//  Created by Andrey Silvestrov on 11/16/20.
//  Copyright © 2020 Andrey Silvestrov. All rights reserved.
//

import UIKit

enum TrafficLightColors {
    case red
    case yellow
    case green
    case none
}

class ViewController: UIViewController {

    @IBOutlet var redColor: UIView!
    @IBOutlet var yellowColor: UIView!
    @IBOutlet var greenColor: UIView!
    
    @IBOutlet var colorChangeButton: UIButton!
    
    private var currentColor = TrafficLightColors.none
    
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColor.alpha = lightOff
        yellowColor.alpha = lightOff
        greenColor.alpha = lightOff
                
    }
    
    override func viewWillLayoutSubviews() {
        redColor.layer.cornerRadius = redColor.frame.width / 2
        yellowColor.layer.cornerRadius = yellowColor.frame.width / 2
        greenColor.layer.cornerRadius = greenColor.frame.width / 2
        
        colorChangeButton.layer.cornerRadius = colorChangeButton.frame.width / 4
        colorChangeButton.layer.borderWidth = 1.2
        colorChangeButton.layer.borderColor = UIColor.systemBlue.cgColor
        colorChangeButton.clipsToBounds = true
    }

    @IBAction func trafficLightColorChange() {
        colorChangeButton.setTitle("NEXT", for: .normal)
        
        switch currentColor {
        case .red:
            greenColor.alpha = lightOff
            redColor.alpha = lightOn
            currentColor = .yellow
        case .yellow:
            redColor.alpha = lightOff
            yellowColor.alpha = lightOn
            currentColor = .green
        case .green:
            yellowColor.alpha = lightOff
            greenColor.alpha = lightOn
            currentColor = .red
        default:
            redColor.alpha = lightOn
            currentColor = .yellow
        }
        
    }
    
}

