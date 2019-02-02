//
//  ViewController.swift
//  Dicee
//
//  Created by Xavier Castro on 2/2/19.
//  Copyright © 2019 Xavier Castro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        randomDiceIndex1 = Int.random(in: 0 ... 5) // Picks a random whole number between 0 and 5
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
}

