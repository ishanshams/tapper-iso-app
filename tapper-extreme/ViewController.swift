//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Ishan Shams on 2/5/16.
//  Copyright © 2016 Ishan Shams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //variables
    var maxTaps : Int = 0
    var currentTaps : Int = 0
    
    
    //outlets
    @IBOutlet weak var logoImg : UIImageView!
    @IBOutlet weak var howManyTapsTxt : UITextField!
    @IBOutlet weak var playBtn : UIButton!
    
    @IBOutlet weak var tapBtn : UIButton!
    @IBOutlet weak var tapsLbs : UILabel!
    
    
    @IBAction func onCoinTapped (sender : UIButton!) {
        currentTaps++
        updateTapsLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func onPlayBtnPressed (sender: UIButton!) {
        
    
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            logoImg.hidden = true;
            playBtn.hidden = true;
            howManyTapsTxt.hidden = true;
            
            
            tapBtn.hidden = false;
            tapsLbs.hidden = false;
            
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLabel()
            
        }
    }
    
    func restartGame () {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.hidden = false;
        playBtn.hidden = false;
        howManyTapsTxt.hidden = false;
        
        
        tapBtn.hidden = true;
        tapsLbs.hidden = true;
        
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        }
        else {
            return false
        }
    }

    func updateTapsLabel() {
        tapsLbs.text = "\(currentTaps) Taps"
    }
}

