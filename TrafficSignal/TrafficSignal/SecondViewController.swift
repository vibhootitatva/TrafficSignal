//
//  SecondViewController.swift
//  TrafficSignal
//
//  Created by PCQ184 on 18/04/20.
//  Copyright © 2020 PCQ184. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var counterValueTextField: UITextField!
    
    @IBOutlet weak var ambulanceTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    func alert(message:String){
        let alert = UIAlertController(title: "Sorry", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func didTapOnClockwise(_ sender: Any) {
        let counter = Int(counterValueTextField.text ?? "0")
        let value = Int(ambulanceTextField.text ?? "0")
        if((counter! < 5 || counter! > 120) && (value! < 10 || value! > 300)) {
            self.alert(message: "Please enter the counter value between 4 and 121 and ambulance value between 9 and 301")
            
        }
            //        if(counterValueTextField.text?.count == 0) {
            //            self.alert(message: "Please Enter the Value")
        else {
            if let vc = self.navigationController?.viewControllers.first as? ViewController {
                vc.defaultCounter = Int(counterValueTextField.text ?? "5")
                vc.valueambulance = Int(ambulanceTextField.text ?? "10")
            }
            self.navigationController?.popViewController(animated: true)
            //        }
            
        }
    }
    
    @IBAction func didTapOnAntiClockwise(_ sender: Any) {
        let counter = Int(counterValueTextField.text ?? "0")
        let value = Int(ambulanceTextField.text ?? "0")
        if((counter! < 5 || counter! > 120) && (value! < 10 || value! > 300)) {
            self.alert(message: "Please enter the counter value between 4 and 121 and ambulance value between 9 and 301")
        }
            
            //        if(counterValueTextField.text?.count == 0) {
            //            self.alert(message: "Please Enter the Value")
        else {
            if let vc = self.navigationController?.viewControllers.first as? ViewController {
                vc.defaultCounter = Int(counterValueTextField.text ?? "5")
                 vc.valueambulance = Int(ambulanceTextField.text ?? "10")
            }
            self.navigationController?.popViewController(animated: true)
            //        }
            
        }
    }
    
    
    
    @IBAction func didTapOnLeftToRight(_ sender: Any) {
        let counter = Int(counterValueTextField.text ?? "0")
        let value = Int(ambulanceTextField.text ?? "0")
        if((counter! < 5 || counter! > 120) && (value! < 10 || value! > 300)) {
            self.alert(message: "Please enter the counter value between 4 and 121 and ambulance value between 9 and 301")
        }
            //        if(counterValueTextField.text?.count == 0) {
            //            self.alert(message: "Please Enter the Value")
        else {
            if let vc = self.navigationController?.viewControllers.first as? ViewController {
                vc.defaultCounter = Int(counterValueTextField.text ?? "5")
                 vc.valueambulance = Int(ambulanceTextField.text ?? "10")
            }
            self.navigationController?.popViewController(animated: true)
            //        }
            
        }
    }
    
    @IBAction func didTapOnRightLeft(_ sender: Any) {
        let counter = Int(counterValueTextField.text ?? "0")
        let value = Int(ambulanceTextField.text ?? "0")
        if((counter! < 5 || counter! > 120) && (value! < 10 || value! > 300)) {
            self.alert(message: "Please enter the counter value between 4 and 121 and ambulance value between 9 and 301")
        }//        if(counterValueTextField.text?.count == 0) {
            //            self.alert(message: "Please Enter the Value")
        else {
            if let vc = self.navigationController?.viewControllers.first as? ViewController {
                vc.defaultCounter = Int(counterValueTextField.text ?? "5")
                 vc.valueambulance = Int(ambulanceTextField.text ?? "10")
            }
            self.navigationController?.popViewController(animated: true)
            //        }
            
        }
        
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
