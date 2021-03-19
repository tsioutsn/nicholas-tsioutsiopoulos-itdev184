//
//  ViewController.swift
//  ProgressApp
//
//  Created by Nikko on 3/19/21.
//  Copyright © 2021 Nikko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0
    
    @IBOutlet weak var activityView: UIActivityIndicatorView!
    @IBOutlet weak var labelProgress: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var stepperObject: UIStepper!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityView.hidesWhenStopped = true
        progressView.progress = 0
        stepperObject.stepValue = 0.1
        stepperObject.maximumValue = 1.0
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func runButton(_ sender: UIButton) {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){ timer in
            self.activityView.startAnimating()
            self.counter += 1
            
            if self.counter >= 5 {
                self.activityView.stopAnimating()
                timer.invalidate()
                self.counter = 0
            }
        }
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        labelProgress.text = "Completed \(Int(stepperObject.value * 10)) of 10 tasks"
        progressView.progress = Float(stepperObject.value)
    }
    
}

