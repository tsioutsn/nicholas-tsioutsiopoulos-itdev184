//
//  ViewController.swift
//  StopWatch
//
//  Created by Nikko on 5/1/21.
//  Copyright © 2021 Nikko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Playbutton: UIButton!
    @IBOutlet weak var Pausebutton: UIButton!
    @IBOutlet weak var Titlelabel: UILabel!
    
    
    var timer = Timer()
    var counter = 0.00
    var isRunning = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        Titlelabel.text = "\(counter)" // 0
        Playbutton.isEnabled = true
        
        Pausebutton.isEnabled = false
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(false)
        UIView.setAnimationsEnabled(false)
    }
    
    @IBAction func fswitch(_ sender: UISwitch) {
        
    }
    
    @IBAction func lswitch(_ sender: UISwitch) {
        
    }
    
    @IBAction func Resetbutton(_ sender: UIButton) {
        timer.invalidate()
        Titlelabel.text = "\(counter)"
        counter = 0.00
        Playbutton.isEnabled = true
        Pausebutton.isEnabled = false
        isRunning = false    }
    
    @objc func UpdateTimer() {
        counter += 0.01
        Titlelabel.text = String(format: "%0.1f", counter)}
    
  
    @IBAction func play(_ sender: UIButton) {
      
        Playbutton.isEnabled = false
        Pausebutton.isEnabled = true
        Titlelabel.text = "\(counter)"
        isRunning = true
          timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(_ sender: UIButton) {
        timer.invalidate()
        Playbutton.isEnabled = true
        Pausebutton.isEnabled = false
        isRunning = false
        Titlelabel.text = "\(counter)"
        
    }
    
    

}
