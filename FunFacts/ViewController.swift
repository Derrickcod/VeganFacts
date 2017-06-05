//
//  ViewController.swift
//  VeganFacts
//
//  Created by Derrick on 6/2/17.
//  Copyright © 2017 Derrick Codlyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()
    
    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBOutlet weak var funFactButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        funFactLabel.text = factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        
        // Shows randon fact when pressed
        funFactLabel.text = factProvider.randomFact()
        
        // Random color from colorProvider object
        let randomColor = colorProvider.randomColor()
        
        // Set color to parent view
        view.backgroundColor = randomColor
        
        // Assigns random color to button
        funFactButton.tintColor = randomColor
    }

}

