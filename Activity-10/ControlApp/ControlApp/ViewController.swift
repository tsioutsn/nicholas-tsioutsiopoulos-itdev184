//
//  ViewController.swift
//  ControlApp
//
//  Created by Nikko on 3/28/21.
//  Copyright © 2021 Nikko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var switchObject: UISwitch!
    @IBOutlet weak var labelSwitch: UILabel!
    @IBOutlet weak var buttonObject: UIButton!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        segmentedControl.insertSegment(withTitle: "Three", at: 2, animated: true)
        
    segmentedControl.setWidth(50, forSegmentAt: 0)
    segmentedControl.setWidth(50, forSegmentAt: 1)
    segmentedControl.setWidth(50, forSegmentAt: 2)        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchInside(_ sender: UIButton) {
        buttonObject.setTitle("New", for: UIControlState.normal)
        switchObject.onTintColor = UIColor.red
        switchObject.tintColor = UIColor.blue
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        if switchObject.isOn {
            labelSwitch.text = "on"
        } else {
            labelSwitch.text = "off"
        }
    }
    
    
    @IBAction func segmentedControlTapped(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            labelSwitch.text = "One"
        case 1:
            labelSwitch.text = "Two"
        default:
            labelSwitch.text = "Three"
        }
    }
    
}

