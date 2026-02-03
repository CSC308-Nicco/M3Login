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
        
        let id = idInput.text ?? ""
        let password = idInput.text ?? ""
        
        guard id.isEmpty || password.isEmpty else
        {
            resultLabel.text = "Please input id and password"
            return
        }
        
        let successful = id == "NiccoS" && password == "1234"
        
        resultLabel.text = successful ? "Login Successful" : "Login Failed"
        
        idInput.text = ""
        passInput.text = ""
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

