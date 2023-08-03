//  ViewController.swift
//  War card Game
//  Created by Mert Şentürk on 25.07.2023.


import UIKit


class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        
        
        
    
        // Randomize numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        
        // Update the ImageViews
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        
        // Making Score table and what makes score increase
        if leftNumber > rightNumber {
            
            
            // left side winds
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if  leftNumber < rightNumber {
            
            
            // Risght side wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        // Tie nothing happens
        else {
            
            
        }
            
        
        
    }
}

