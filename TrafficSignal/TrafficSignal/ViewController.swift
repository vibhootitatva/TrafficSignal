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
    var counter : Int! = 5
    var defaultCounter : Int! = 5
    var timer : Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sideAButton.backgroundColor = .green
        sideALabel.text = "5"
        sideBLabel.text = "5"
        sideCLabel.text = "5"
        sideDLabel.text = "5"
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(signal), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        sideALabel.text = String(defaultCounter)
        sideBLabel.text = String(defaultCounter)
        sideCLabel.text = String(defaultCounter)
        sideDLabel.text = String(defaultCounter)
    }
    
    @IBAction func didTapOnAAmbulance(_ sender: Any) {
        
        sideBButton.backgroundColor = UIColor.red
        sideCButton.backgroundColor = UIColor.red
        sideDButton.backgroundColor = UIColor.red
        sideAButton.backgroundColor = UIColor.green
        counter = 10
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(signal), userInfo: nil, repeats: true)
    }
    
    @IBAction func didTapOnCAmbulance(_ sender: Any) {
        sideBButton.backgroundColor = UIColor.red
        sideCButton.backgroundColor = UIColor.red
        sideDButton.backgroundColor = UIColor.red
        counter = 10
        
        timer?.invalidate()
        sideCButton.backgroundColor = UIColor.green
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(signal), userInfo: nil, repeats: true)
    }
    
    @IBAction func didTapOnDAmbulance(_ sender: Any) {
        sideBButton.backgroundColor = UIColor.red
        sideCButton.backgroundColor = UIColor.red
        sideAButton.backgroundColor = UIColor.red
        
        counter = 10
        
        timer?.invalidate()
        sideDButton.backgroundColor = UIColor.green
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(signal), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func didTapOnBAmbulance(_ sender: Any) {
        sideAButton.backgroundColor = UIColor.red
        sideCButton.backgroundColor = UIColor.red
        sideDButton.backgroundColor = UIColor.red
        sideBButton.backgroundColor = UIColor.green
        counter = 10
        
        timer?.invalidate()
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(signal), userInfo: nil, repeats: true)
    }
    
    
    
    @IBAction func didTapOnSetting(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier:"SecondViewController") as!
        SecondViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc func signal() {
        if(counter > 0 && sideAButton.backgroundColor == .green) {
            counter = counter - 1
            sideALabel.text = "\(counter ?? 5)"
            if(counter == 0) {
                sideAButton.backgroundColor = UIColor.red
                sideBButton.backgroundColor = UIColor.green
                counter = defaultCounter
                sideALabel.text = "\(counter ?? 5)"
                timer?.invalidate()
                timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(signal), userInfo: nil, repeats: true)
                
                
                
            }
        }
        else if (counter > 0 && sideBButton.backgroundColor == .green) {
            sideBButton.backgroundColor = .green
            counter = counter - 1
            sideBLabel.text = "\( counter ?? 5)"
            if(counter == 0) {
                sideBButton.backgroundColor = UIColor.red
                sideCButton.backgroundColor = UIColor.green
                counter = defaultCounter
                sideALabel.text = "\(defaultCounter ?? 5)"
                timer?.invalidate()
                timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(signal), userInfo: nil, repeats: true)
            }
        }
            
        else if (counter > 0 && sideCButton.backgroundColor == .green) {
            sideCButton.backgroundColor = .green
            counter = counter - 1
            sideCLabel.text = "\(counter ?? 5)"
            if(counter == 0) {
                sideCButton.backgroundColor = UIColor.red
                sideDButton.backgroundColor = UIColor.green
                counter = defaultCounter
                sideBLabel.text = "\(defaultCounter ?? 5)"
                timer?.invalidate()
                timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(signal), userInfo: nil, repeats: true)
                
            }
        }
        else if (counter > 0 && sideDButton.backgroundColor == .green) {
            sideDButton.backgroundColor = .green
            counter = counter - 1
            sideDLabel.text = "\(counter ?? 5)"
            if(counter == 0) {
                sideDButton.backgroundColor = UIColor.red
                sideAButton.backgroundColor = UIColor.green
                counter = defaultCounter
                sideCLabel.text = "\(defaultCounter ?? 5)"
                timer?.invalidate()
                timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(signal), userInfo: nil, repeats: true)
                
            }
        }
    }
}

