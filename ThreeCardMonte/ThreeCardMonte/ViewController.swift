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
            
            let randomImages = ["threeCard","threeCard","kingCard"]
            
    
            
            switch sender.tag {
            
            case 0:
                sender.setBackgroundImage(UIImage(named:"\( randomImages.randomElement() ?? "threeCard")"), for: UIControl.State.normal )
                
                for tag in arrayOfTags {
                    tag?.isEnabled = false
                }
                
            case 1:
                sender.setBackgroundImage(UIImage(named:"\( randomImages.randomElement() ?? "kingCard")"), for: UIControl.State.normal )
                
                for tag in arrayOfTags {
                    tag?.isEnabled = false
                           }
                
            case 2:
                sender.setBackgroundImage(UIImage(named:"\( randomImages.randomElement() ?? "threeCard")"), for: UIControl.State.normal )
                
                for tag in arrayOfTags {
                        tag?.isEnabled = false
                           }
                
            default:
                sender.setBackgroundImage(UIImage(named:"\( randomImages.randomElement() ?? "threeCard")"), for: UIControl.State.normal )
                
                
                for tag in arrayOfTags {
                    tag?.isEnabled = false
                           }
                
            }
        }
        
        
        
        @IBAction func startNewGame(_ sender: UIButton) {
            let arrayOfTags = [tag0,tag1,tag2]
            
            for tag in arrayOfTags {
            tag?.isEnabled = true
                   
        }
            arrayOfTags.forEach({$0?.setImage(UIImage(named: "cardBackRed"), for: .normal)})
        
        
    }
        
        
        
    }



