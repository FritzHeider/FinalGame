//
//  ViewController.swift
//  FritzGame
//
//  Created by Fritz Heider on 12/8/19.
//  Copyright © 2019 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var startGameButton: UIButton!
    
    @IBOutlet weak var Top: UILabel!
    @IBOutlet weak var Bottom: UILabel!
 
    let colorMeaning = ["red", "orange", "yellow", "blue", "purple"]
       let colorDict: [String:UIColor] = [
           "red": UIColor.red,
           "orange": UIColor.orange,
           "yellow": UIColor.yellow,
           "blue": UIColor.blue,
           "purple": UIColor.purple
       ]
    
    @IBAction func topMatch(_ sender: UIButton) {
        changeColorMeaning()
        changeTextColor()
    }
    @IBAction func bottomMatch(_ sender: UIButton) {
        changeColorMeaning()
        changeTextColor()
    }
    
    @IBAction func bothMatch(_ sender: UIButton) {
        changeColorMeaning()
        changeTextColor()
        
    }
    @IBAction func noMatchBtn(_ sender: Any) {
        changeColorMeaning()
        changeTextColor()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startGameButtonTapped(_ sender: UIButton) {
        sender.isHidden = true // start game button disappears after being tapped
        changeColorMeaning()
        changeTextColor()
        
       
    }
    func changeColorMeaning() {
        let randomIndex = Int.random(in: 0 ..< colorMeaning.count)
        Top.text = colorMeaning[randomIndex]
        Bottom.text = colorMeaning[randomIndex]
        addColortoText()
    }
    
    // helper function to change text in textColorLabel
    func changeTextColor() {
        let randomIndex = Int.random(in: 0 ..< colorMeaning.count)
        Bottom.text = colorMeaning[randomIndex]
    }
    
    //helper function to change physical color of textColorLabel
    func addColortoText() {
        self.Top.textColor = colorDict.randomElement()?.value
        self.Bottom.textColor = colorDict.randomElement()?.value
    }


}

