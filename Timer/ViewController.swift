//
//  ViewController.swift
//  Timer
//
//  Created by Advait on 18/06/17.
//  Copyright © 2017 Advait. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var timerCount = 210
    @IBOutlet weak var tickerTimer: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playFunction() {
        timerCount = timerCount-1
        if(timerCount>0 && timerCount<210){
        tickerTimer.text = String(timerCount)
        }
        else if(timerCount>210){
            timerCount=210
            tickerTimer.text = String(timerCount)
        }
        else{
            tickerTimer.text = "0"
        }
    }
    
    @IBAction func playButtonPressed(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.playFunction), userInfo: nil, repeats: true)
    }

    @IBAction func pauseButtonPressed(_ sender: Any) {
        timer.invalidate()
    }

    @IBAction func decrementButtonPressed(_ sender: Any) {
        timerCount=timerCount-10
        if(timerCount>0){
            tickerTimer.text = String(timerCount)
        }
        else{
            tickerTimer.text = "0"
            timer.invalidate()

        }
    }
    
    @IBAction func incrementButtonPressed(_ sender: Any) {
        timerCount = timerCount + 10
        if(timerCount>210){
            tickerTimer.text = "210"
        }
        else{
            tickerTimer.text = String(timerCount)
        }
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        timerCount = 210
        tickerTimer.text = String(timerCount)
    }
    
    
}

