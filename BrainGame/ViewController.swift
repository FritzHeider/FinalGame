//
//  ViewController.swift
//  BrainGame
//
//  Created by Fritz Heider on 12/11/19.
//  Copyright © 2019 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    struct color{
        let textColor = ["Red", "Blue", "Green", "Yellow", "Purple", "Orange"]
        let colors = ["Red":UIColor.red, "Blue":UIColor.blue, "Green":UIColor.green, "Yellow":UIColor.yellow, "Purple":UIColor.purple, "Orange":UIColor.orange]
    }
    
    var score = 0
    var matching:Bool = true
    
    @IBOutlet weak var firstWord: UILabel!
    @IBOutlet weak var secondWord: UILabel!
    
    @IBOutlet weak var scoreText: UILabel!
    @IBOutlet weak var scoreNum: UILabel!
    
    @IBOutlet weak var trueText: UIButton!
    @IBOutlet weak var falseText: UIButton!
    
    @IBOutlet weak var startText: UIButton!
    @IBOutlet weak var overText: UILabel!
    
    @IBOutlet weak var timeText: UILabel!
    
    @IBOutlet weak var sectText: UILabel!
    
    @IBOutlet weak var timeNum: UILabel!
    var timer:Timer?
    var timeLeft = 60
    



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scoreText.isHidden = true
        scoreNum.isHidden = true
        trueText.isHidden = true
        falseText.isHidden = true
        overText.isHidden = true
        timeNum.isHidden = true
        timeText.isHidden = true
        sectText.isHidden = true
    }


    @IBAction func startButton(_ sender: Any) {
//        ?randomizer()
        scoreText.isHidden = false
        scoreNum.isHidden = false
        trueText.isHidden = false
        falseText.isHidden = false
        firstWord.isHidden = false
        secondWord.isHidden = false
        timeNum.isHidden = false
        timeText.isHidden = false
        sectText.isHidden = false
        startText.isHidden = true
        overText.isHidden = true
        
        self.score = 0
        scoreNum.text = "0"

//        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(onTimerFires), userInfo: nil, repeats: true)
        
    }
}

