//
//  ViewController.swift
//  StopWatch
//
//  Created by Mark Wirz on 04.12.18.
//  Copyright © 2018 Mark Wirz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timelabel: UILabel!
    
    var seconds = 0.0
    var running = false
    var timer = Timer()
    let formatter = DateComponentsFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateTimelabel()
    }

    func updateTimelabel(){
        seconds = ((seconds*10).rounded()) / 10
        timelabel.text = "\(seconds)"
    }
    
    @objc func countUp(){
        seconds += 0.1
        updateTimelabel()
    }
    
    func startTimer(){

        if(running){ return }
        
        if(!running){
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(countUp), userInfo: nil, repeats: true)
        running = true
        }
    }
    
    func stopTimer(){
        timer.invalidate()
        running = false        
    }
    
    func resetTimer(){
        stopTimer()
        seconds = 0.0
        updateTimelabel()
    }
    
    @IBAction func buttonHandler(_ sender: UIButton){
        if let title = sender.titleLabel?.text{
        
            switch title{
            case "Start":
                startTimer()
            case "Stop":
                stopTimer()
            case "Reset":
                resetTimer()
            default:
                break
            }
        }
        
    }
    
    

}

