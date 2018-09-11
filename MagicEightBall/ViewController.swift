//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Ben Meisenzahl on 9/6/18.
//  Copyright © 2018 Ben Meisenzahl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var index = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let answerArray = ["It is certain",
                        "It is decidedly so",
                        "Without a doubt",
                        "Yes, definitely",
                        "You may rely on it",
                        "As I see it, yes",
                        "Most likely",
                        "Outlook good",
                        "Yes",
                        "Signs point to yes",
                        "Reply hazy try again",
                        "Ask again later",
                        "Better not tell you now",
                        "Cannot predict now",
                        "Concentrate and ask again",
                        "Don't count on it",
                        "My reply is no",
                        "My sources say no",
                        "Outlook not so good",
                        "Very doubtful"]

        
        var newIndex = -1
        
        repeat{
            newIndex = Int.random(in: 0..<answerArray.count)
        } while index == newIndex
        index = newIndex
        resultLabel.text = answerArray[index]
    }
    
}

