//
//  ViewController.swift
//  DiceeApp
//
//  Created by Anil on 8/20/19.
//  Copyright © 2019 kesarwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndext1: Int = 0
    var randomDiceIndex2: Int = 0
    
    var diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImage()
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImage()
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
    
    
    func updateDiceImage(){
        randomDiceIndext1 = Int.random(in: 0...5)
        randomDiceIndex2 = Int.random(in: 0...5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndext1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    
    }
    

    
    
}

