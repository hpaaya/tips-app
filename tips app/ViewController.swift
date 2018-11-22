//
//  ViewController.swift
//  tips app
//
//  Created by User14 on 2018/11/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NTDTextField: UITextField!
    @IBOutlet weak var USDTextField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func USDcalculate(_ sender: Any) {
        if let NTDText = NTDTextField.text, let NTD = Double(NTDText){
            let USD = Double(NTD / 30.0)
            USDTextField.text = "\(USD)"
            if USD > 200{
                label.text = "有錢人！！"
            }
            else{
                label.text = "加油！多賺錢！"
            }
        }
    }
    @IBAction func NTDcalculate(_ sender: Any) {
        if let USDText = USDTextField.text, let USD = Double(USDText){
            let NTD = Double(USD * 30.0)
            NTDTextField.text = "\(NTD)"
            
            if NTD > 5000{
                label.text = "有錢人！！"
            }
            else {
                label.text = "加油！多賺錢！"
            }
        }
    }
    
}
