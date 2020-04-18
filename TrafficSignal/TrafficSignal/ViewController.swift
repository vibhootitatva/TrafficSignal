//
//  ViewController.swift
//  TrafficSignal
//
//  Created by PCQ184 on 18/04/20.
//  Copyright © 2020 PCQ184. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sideALabel: UILabel!
    @IBOutlet weak var sideBLabel: UILabel!
    @IBOutlet weak var sideCLabel: UILabel!
    @IBOutlet weak var sideDLabel: UILabel!
    @IBOutlet weak var sideAButton: UIButton!
    @IBOutlet weak var sideBButton: UIButton!
    @IBOutlet weak var sideCButton: UIButton!
    @IBOutlet weak var sideDButton: UILabel!
    var counter = 10
    override func viewDidLoad() {
        super.viewDidLoad()
        let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(signal), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
    }
    @objc func signal() {
        if(counter > 0) {
            counter = counter - 1
            sideALabel.text = "\(counter)"
        }
        
    }
}
