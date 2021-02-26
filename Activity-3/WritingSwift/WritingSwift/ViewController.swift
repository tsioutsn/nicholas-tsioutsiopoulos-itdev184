//
//  ViewController.swift
//  WritingSwift
//
//  Created by Nikko on 2/25/21.
//  Copyright © 2021 Nikko. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController {
    
@IBOutlet var labelResult: UILabel!
    
    @IBOutlet weak var textMessage: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeButton(_ sender: UIButton) {
        labelResult.text = textMessage.text?.uppercased()
    }
    
}

