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
    
    
    
    
    @IBOutlet weak var resultOfGame: UILabel!
    
    
    @IBOutlet weak var tag0: UIButton!
    
    @IBOutlet weak var tag1: UIButton!
    
    
    @IBOutlet weak var tag2: UIButton!
    
    
    
    
    @IBAction func flipCardsOver(_ sender: UIButton) {
        
        let arrayOfTags = [tag0,tag1,tag2]
        
        let imagesArray = ["threeCard","threeCard","kingCard"]
        
        let randomImages = imagesArray.randomElement() ?? "threeCard"
        
        switch sender.tag {
            
        case 0:
            sender.setBackgroundImage(UIImage(named:"\(randomImages)"), for: UIControl.State.normal )
            
            for tag in arrayOfTags {
                tag?.isEnabled = false
            }
            if randomImages == "kingCard"
            {
                resultOfGame.text = "YOU WIN !!! "
            } else { resultOfGame.text = "Sorry, You Lose!"}
            
        case 1:
            sender.setBackgroundImage(UIImage(named:"\(randomImages)"), for: UIControl.State.normal )
            
            for tag in arrayOfTags {
                tag?.isEnabled = false
            }
            if randomImages == "kingCard"
            {
                resultOfGame.text = "YOU WIN !!! "
            } else { resultOfGame.text = "Sorry, You Lose!"}
        case 2:
            sender.setBackgroundImage(UIImage(named:"\(randomImages)"), for: UIControl.State.normal )
            
            for tag in arrayOfTags {
                tag?.isEnabled = false
            }
            if randomImages == "kingCard"
            {
                resultOfGame.text = "YOU WIN !!! "
            } else { resultOfGame.text = "Sorry, You Lose!"}
        default:
            sender.setBackgroundImage(UIImage(named:"\(randomImages)"), for: UIControl.State.normal )
            
            for tag in arrayOfTags {
                tag?.isEnabled = false
                
            }
            
        }
        
    }
    
    
    @IBAction func startNewGame(_ newGameButton: UIButton) {
        
        let arrayOfTags = [tag0,tag1,tag2]
        
        resultOfGame.text = "Pick A Card"
        
        for tag in arrayOfTags {
            tag?.isEnabled = true
        }
        
        tag0.setBackgroundImage(UIImage(named: "cardBackRed"), for: UIControl.State.normal)
        tag1.setBackgroundImage(UIImage(named: "cardBackRed"), for: UIControl.State.normal)
        tag2.setBackgroundImage(UIImage(named: "cardBackRed"), for: UIControl.State.normal)
        
    }
    
}

