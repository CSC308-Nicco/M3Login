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
    
    @IBAction func pressBtn(_ sender: UIButton)
    {
        guard let id = idInput.text, let password = passInput.text, !id.isEmpty, !password.isEmpty else
        {
            showAlert(message: "Please input id and password")
            return
        }
        
        let successful = id == "NiccoS" && password == "1234"
        
        resultLabel.text = successful ? "Login Successful" : "Login Failed"
        
        idInput.text = ""
        passInput.text = ""
    
    }
    
    func showAlert(message: String)
    {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        idInput.becomeFirstResponder()
    }


}

