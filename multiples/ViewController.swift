//
//  ViewController.swift
//  multiples
//
//  Created by Alexander Schnurpfeil on 19/06/16.
//  Copyright © 2016 Alexander Schnurpfeil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    Properties
    var multiple = 0
    var result = 0
    var maxValue = 0
    var tempValue = 0
    
//    Outlets
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var inputTextLine: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var addButton: UIButton!

    @IBAction func onPlayButtonPressed(sender: UIButton!) {
        if inputTextLine.text != nil && inputTextLine.text != "" {
            playButton.hidden = true
            logoImage.hidden = true
            inputTextLine.hidden = true
            addButton.hidden = false
            outputLabel.hidden = false
            result = 0
            multiple = Int(inputTextLine.text!)!
            setOutputLabelText()
            
        }
    }
    
    @IBAction func onAddButtonPressed(sender: UIButton!) {
        maxValue = 10 * multiple
        if result < maxValue {
            
            setOutputLabelText()
            
        } else {
            restartGame()
        }
    }
    
    func setOutputLabelText() {
        result += multiple
        outputLabel.text = "\(tempValue) + \(multiple) = \(result)"
        tempValue = result
    }
    
    func restartGame() {
        playButton.hidden = false
        logoImage.hidden = false
        inputTextLine.hidden = false
        outputLabel.hidden = true
        addButton.hidden = true
        multiple = 0
        result = 0
        maxValue = 0
        tempValue = 0
    }
}

