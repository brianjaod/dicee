//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBoutlets make the connection to the UI from code
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    @IBOutlet weak var logoImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Image literal way to do it
        diceImageViewLeft.image = #imageLiteral(resourceName: "DiceSix")
        // UIimage way to do it
        diceImageViewRight.image = UIImage(named: "DiceTwo")
        // Change img opacity
        //diceImageViewLeft.alpha = 0.5;  // semicolons are optional
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        if diceImageViewLeft.image == UIImage(named: "DiceSix") {
            diceImageViewLeft.image = UIImage(named: "DiceThree")
            logoImage.image = UIImage(named: "snakeEyes")
        }
        else {
            diceImageViewLeft.image = UIImage(named: "DiceSix")
            logoImage.image = UIImage(named: "DiceeLogo")
        }
        // Print to debug log
        print("Button press")
    }
}

