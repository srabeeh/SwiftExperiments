//
//  ViewController.swift
//  tapper
//
//  Created by Sam Rabeeh on 2015-11-27.
//  Copyright © 2015 Sam Rabeeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Properties
    var maxTaps = 0
    var currentTaps = 0
    

    // Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var numberOfTaps: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func onPlayBtnPressed(sender: UIButton!){

        
        if numberOfTaps.text != nil && numberOfTaps.text != ""{
            logoImg.hidden = true
            playBtn.hidden = true
            numberOfTaps.hidden = true
            
            tapBtn.hidden = false
            tapsLabel.hidden = false
            maxTaps = Int(numberOfTaps.text!)!
            currentTaps = 0
            updateTapsLabel()
        }
    }
    
    @IBAction func onCoinTapped(sender: UIButton!){
        currentTaps++
        updateTapsLabel()
        if isGameOver(){
            restartGame()
        }
        
    }
    
    func restartGame(){
        maxTaps = 0
        tapsLabel.text = ""
        logoImg.hidden = false
        playBtn.hidden = false
        numberOfTaps.hidden = false
        
        tapBtn.hidden = true
        tapsLabel.hidden = true
    }
    
    func updateTapsLabel(){
        tapsLabel.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool{
        if currentTaps >= maxTaps{
            return true
        }
        else{
            return false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tapBtn.hidden = true
        tapsLabel.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

