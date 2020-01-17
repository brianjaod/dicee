//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Image literal way to do it
        diceImageViewLeft.image = #imageLiteral(resourceName: "DiceSix")
        // UIimage way to do it
        diceImageViewRight.image = UIImage(named: "DiceTwo")
        
    }


}

