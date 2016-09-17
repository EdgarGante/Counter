//
//  ViewController.swift
//  Counter
//
//  Created by Edgar on 7/15/16.
//  Copyright © 2016 Edgar Gante. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    var currentNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let background = CAGradientLayer().deepBlueGradientViewBackground()
        background.frame = self.view.bounds
        self.view.layer.insertSublayer(background, at: 0)
    }
    
    @IBAction func refreshButtonPressed(_ sender: AnyObject) {
        restartButton.isHidden = true
        currentNumber = 0
        updateNumber()
        updateColorLabel()

    }

    @IBAction func plusButtonPressed(_ sender: AnyObject) {
        showRestartButton()
        currentNumber = currentNumber + 1
        updateNumber()
        printCurrentNumber()
        updateColorLabel()

    }

    @IBAction func minusButtonPressed(_ sender: AnyObject) {
        showRestartButton()
        currentNumber = currentNumber - 1
        updateNumber()
        printCurrentNumber()
        updateColorLabel()

    }
    
    func updateNumber() {
        numberLabel.text = "\(currentNumber)"
    }
    
    func showRestartButton() {
        restartButton.isHidden = false
    }
    
    func printCurrentNumber() {
        print("Number:", currentNumber)
    }
    
    func updateColorLabel() {
        if currentNumber == 0 {
            numberLabel.textColor = UIColor.white
        } else if currentNumber < 0 {
            numberLabel.textColor = UIColor.white
        } else {
            numberLabel.textColor = UIColor.white
        }
    }
    
}

