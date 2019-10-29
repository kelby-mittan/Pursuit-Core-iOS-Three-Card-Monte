//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
    @IBOutlet weak var winOrLose: UILabel!
    
    @IBOutlet weak var printScore: UILabel!
    
    var buttonFalse = true
    
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    
    var score = Int()
    
    @IBAction func turnCardOver(_ sender: UIButton) {

        let cardButtonArr = ["threeCard", "kingCard", "threeCard"]
        let randomCard = cardButtonArr.randomElement()
        let randomNum = Int.random(in: 1...2)
        
        if buttonFalse == true {
            switch sender.tag {
            case 0:
                if let validRandomCard = randomCard {
                    sender.setBackgroundImage(UIImage(named: validRandomCard), for: .normal)
                    if validRandomCard == "kingCard" {
                        winOrLose.text = "You Win"
                        score = score + 10
                    } else if validRandomCard == "threeCard" {
                        winOrLose.text = "You lose, try again"
                        score = score + 0
                        switch randomNum {
                        case 1:
                            card2.setBackgroundImage(UIImage(named: "kingCard"), for: .normal)
                        case 2:
                            card3.setBackgroundImage(UIImage(named: "kingCard"), for: .normal)
                        default:
                            card2.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
                        }
                    }
                }
                
            case 1:
                if let validRandomCard = randomCard {
                    sender.setBackgroundImage(UIImage(named: validRandomCard), for: .normal)
                    if validRandomCard == "kingCard" {
                        winOrLose.text = "You Win"
                        score = score + 10
                    } else if validRandomCard == "threeCard" {
                        winOrLose.text = "You lose, try again"
                        score = score + 0
                        switch randomNum {
                        case 1:
                            card1.setBackgroundImage(UIImage(named: "kingCard"), for: .normal)
                        case 2:
                            card3.setBackgroundImage(UIImage(named: "kingCard"), for: .normal)
                        default:
                            card2.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
                        }
                    }
                }
            case 2:
                if let validRandomCard = randomCard {
                    sender.setBackgroundImage(UIImage(named: validRandomCard), for: .normal)
                    if validRandomCard == "kingCard" {
                        winOrLose.text = "You Win"
                        score = score + 10
                    } else if validRandomCard == "threeCard" {
                        winOrLose.text = "You lose, try again"
                        score = score + 0
                        switch randomNum {
                        case 1:
                            card2.setBackgroundImage(UIImage(named: "kingCard"), for: .normal)
                        case 2:
                            card1.setBackgroundImage(UIImage(named: "kingCard"), for: .normal)
                        default:
                            card2.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
                        }
                    }
                }
            default:
                print("")
            }
        }
        buttonFalse = false
        printScore.text = "Score: \(score)"
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        buttonFalse = true
        card1.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
        card2.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
        card3.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
        winOrLose.text = "Pick a card, any card!!!"
    }
    
    
}

