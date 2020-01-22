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
    
    let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    var leftNum=0, rightNum=0   // don't forget to initialze
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Left num before: \(leftNum+1)")
        print("Right num before: \(rightNum+1)")
        
        leftNum = Int.random(in:0...5)
        rightNum = Int.random(in:0...5)
        
        diceImageViewLeft.image = diceArray[leftNum]
        diceImageViewRight.image = diceArray[rightNum]
        if leftNum == 0 && rightNum == 0
        {
            logoImage.image = UIImage(named: "snakeEyes")
        }
        else if leftNum == 5 && rightNum == 5
        {
            logoImage.image = UIImage(named: "boxcars")
        }
        else
        {
            logoImage.image = UIImage(named: "DiceeLogo")
        }
            
        /*
        leftNum += 1
        if leftNum == 6
        {
            leftNum = 0
        }
        rightNum += 1
        if rightNum == 6
        {
            rightNum = 0
        }
        
        if diceImageViewLeft.image == UIImage(named: "DiceSix") {
            diceImageViewLeft.image = UIImage(named: "DiceThree")
            logoImage.image = UIImage(named: "snakeEyes")
        }
        else {
            diceImageViewLeft.image = UIImage(named: "DiceSix")
            logoImage.image = UIImage(named: "DiceeLogo")
        }
 */
        // Print to debug log
        print("Left num after: \(leftNum+1)")
        print("Right num after: \(rightNum+1)")
    }
}

