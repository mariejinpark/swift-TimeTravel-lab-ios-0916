//
//  ViewController.swift
//  TimeTravel
//
//  Created by James Campagno on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
////

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var planetLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    func updatePlanetLabel(button: UIButton) {
        planetLabel.text = button.titleLabel?.text
    }
    
    func updateSpeedLabel(button: UIButton) {
        speedLabel.text = button.titleLabel?.text
    }
    
    @IBAction func speedButtonPressed(_ sender: UIButton) {
        print(sender.titleLabel?.text)
        updateSpeedLabel(button: sender)
    }
    
    @IBAction func planetButtonPressed(_ sender: UIButton) {
        print(sender.titleLabel?.text)
        updatePlanetLabel(button: sender)
    }
    
    

    


}

