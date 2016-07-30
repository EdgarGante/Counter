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
    }
    
    @IBAction func refreshButtonPressed(sender: AnyObject) {
        restartButton.hidden = true
        currentNumber = 0
        updateNumber()
    }

    @IBAction func plusButtonPressed(sender: AnyObject) {
        showRestartButton()
        currentNumber = currentNumber + 1
        updateNumber()
    }

    @IBAction func minusButtonPressed(sender: AnyObject) {
        showRestartButton()
        currentNumber = currentNumber - 1
        updateNumber()
    }
    
    func updateNumber() {
        numberLabel.text = "\(currentNumber)"
    }
    
    func showRestartButton() {
        restartButton.hidden = false
    }
}

