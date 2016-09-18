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
        // Default Settings
        UIApplication.shared.statusBarStyle = .lightContent
        numberLabel.alpha = 0.6
        
        let background = CAGradientLayer().GradientViewBackground()
        background.frame = self.view.bounds
        self.view.layer.insertSublayer(background, at: 0)
    }
    
    @IBAction func refreshButtonPressed(_ sender: AnyObject) {
        restartButton.isHidden = true
        currentNumber = 0
        updateNumber()
        numberLabel.alpha = 0.6
        restartButton.isHidden = true

    }

    @IBAction func plusButtonPressed(_ sender: AnyObject) {
        showRestartButton()
        currentNumber = currentNumber + 1
        updateNumber()
        printCurrentNumber()
        addAlpha()
    }

    @IBAction func minusButtonPressed(_ sender: AnyObject) {
        showRestartButton()
        currentNumber = currentNumber - 1
        updateNumber()
        printCurrentNumber()
        addAlpha()
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
    
    func addAlpha() {
        numberLabel.alpha.add(0.01)
    }
}

