//
//  ViewController.swift
//  Egg Boiler
//
//  Created by Sai Reddy on 30/07/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var progress_bar: UIProgressView!
    
    var dict : [String:Int] = ["Soft":3,"Medium":5,"Hard":5]
    var timer = Timer()
    
    var remaining_time = 0
    var total_time = 0

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        timer.invalidate()
        
        remaining_time = 0
        let title = sender.currentTitle!
        
        total_time = dict[title]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer(){
        if(remaining_time < total_time){
            remaining_time += 1
            progress_bar.progress = Float(remaining_time)/Float(total_time)
        }
    }
    
}

