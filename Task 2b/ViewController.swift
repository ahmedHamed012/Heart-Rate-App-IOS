//
//  ViewController.swift
//  Task 2b
//
//  Created by Ahmed Hamed on 23/10/2023.
//

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var fieldtxt: UITextField!
    @IBOutlet weak var lbltxt: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        // Do any additional setup after loading the view.
        lbltxt.text = ""
    }
    
    @IBAction func btnClick(_ sender: Any) {
        let theText = fieldtxt.text ?? ""
        let intNum = Int(theText) ?? 0
        if(intNum>=100){
            switch intNum {
            case 100...120 :
                lbltxt.text = "You are in the very light zone.Activity this zone with recovery"
            case 121...140:
                lbltxt.text = "You are in the light zone.Activity this zone helps improve basic endurance and fat burning"
            case 141...160 :
                lbltxt.text = "You are in the Moderate Zone"
            case 161...180 :
                lbltxt.text = "You are in the Hard Zone"
            case 181...200 :
                lbltxt.text = "You are in the Maximum Zone"
            default:
                lbltxt.text = "slow down please "
            }
        }
        else {
            lbltxt.text = "You have entered false value"
        }
    }
}
