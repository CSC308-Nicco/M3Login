//
//  ViewController.swift
//  M3Login
//
//  Created by Settimi, Niccolo B. on 2/3/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idInput: UITextField!
    @IBOutlet weak var passInput: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func pressBtn(_ sender: UIButton) {
        if (idInput.text == "NiccoS" && passInput.text == "1234")
        {
            resultLabel.text = "Login Successful"
        }
        else
        {
            resultLabel.text = "Login Failed"
        }
        
        idInput.text = ""
        passInput.text = ""
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

