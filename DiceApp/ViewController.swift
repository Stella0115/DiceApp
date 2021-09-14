//
//  ViewController.swift
//  DiceApp
//
//  Created by Yan Lei on 9/13/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgOne: UIImageView!
    
    @IBOutlet weak var imgTwo: UIImageView!
    
    @IBOutlet weak var score: UILabel!
    
    var finalScore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func below7Pressed(_ sender: Any) {
        
        let one = Int.random(in: 1...6)
        let two = Int.random(in: 1...6)
        
        let imgOneName = "Dice\(one)"
        let imgTwoName = "Dice\(two)"
        
        imgOne.image = UIImage(named: imgOneName)
        imgTwo.image = UIImage(named: imgTwoName)
    
        if one + two < 7 {
            finalScore += 1
        }else if finalScore > 0 {
            finalScore -= 1
        }
        
        score.text = "Score = \(finalScore)"
        
    }
    
    
    @IBAction func lucky7Pressed(_ sender: Any) {
        
        let one = Int.random(in: 1...6)
        let two = Int.random(in: 1...6)
        
        let imgOneName = "Dice\(one)"
        let imgTwoName = "Dice\(two)"
        
        imgOne.image = UIImage(named: imgOneName)
        imgTwo.image = UIImage(named: imgTwoName)
    
        if one + two == 7 {
            finalScore += 7
        }else if finalScore > 0 {
            finalScore -= 1
        }
        
        score.text = "Score = \(finalScore)"
        
    }
    

    
    @IBAction func above7Pressed(_ sender: Any) {
        
        let one = Int.random(in: 1...6)
        let two = Int.random(in: 1...6)
        
        let imgOneName = "Dice\(one)"
        let imgTwoName = "Dice\(two)"
        
        imgOne.image = UIImage(named: imgOneName)
        imgTwo.image = UIImage(named: imgTwoName)
    
        if one + two > 7 {
            finalScore += 1
        }else if finalScore > 0 {
            finalScore -= 1
        }
        
        score.text = "Score = \(finalScore)"
        
    }
    
    
}

