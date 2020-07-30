//
//  ViewController.swift
//  Traffic Light
//
//  Created by Kairzhan Kural on 7/29/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    let dark: CGFloat = 0.3
    let light: CGFloat = 1
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = dark
        yellowLight.alpha = dark
        greenLight.alpha = dark
        
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
    @IBAction func nextColor() {
        startButton.setTitle("NEXT", for: .normal)
        switch count {
        case 0:
            redLight.alpha = light
            yellowLight.alpha = dark
            greenLight.alpha = dark
            count += 1
        case 1:
            redLight.alpha = dark
            yellowLight.alpha = light
            greenLight.alpha = dark
            count += 1
        case 2:
            redLight.alpha = dark
            yellowLight.alpha = dark
            greenLight.alpha = light
            count = 0
        default:
            return
        }
        
    }
    
}

