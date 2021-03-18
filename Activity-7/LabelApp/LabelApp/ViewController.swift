//
//  ViewController.swift
//  LabelApp
//
//  Created by Nikko on 3/15/21.
//  Copyright © 2021 Nikko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeLabel(_ sender: UIButton) {
        myLabel.text = "Text created by Swift \ncode using Xcode"
        myLabel.numberOfLines = 2
        myLabel.font = UIFont(name: "Courier", size: 14)
        myLabel.backgroundColor = UIColor.yellow
        myLabel.isEnabled = false
    }
    
}

