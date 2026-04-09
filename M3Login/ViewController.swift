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
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func pressBtn(_ sender: Any)
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

extension ViewController: UITextFieldDelegate
{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var finalId = idInput.text ?? ""
        var finalPass = passInput.text ?? ""
        
        if (textField == idInput)
        {
            guard let range = Range(range, in: finalId) else { return true }
            
            finalId = finalId.replacingCharacters(in: range, with: string)
        }
        else if (textField == passInput)
        {
            guard let range = Range(range, in: finalPass) else { return true }
            
            finalPass = finalPass.replacingCharacters(in: range, with: string)
        }
        
        loginBtn.isEnabled = !finalId.isEmpty && !finalPass.isEmpty
        
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool
    {
        if (textField == idInput)
        {
            let count = textField.text?.count ?? 0
            let isValid = (6...12).contains(count)
            textField.layer.borderWidth = isValid ? 0 : 2
            textField.layer.borderColor = isValid ? nil : UIColor.red.cgColor
            textField.layer.cornerRadius = isValid ? 0 : 12
            textField.tintColor = isValid ? view.tintColor : .red
            
            return isValid
        }
        
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        switch textField
        {
        case idInput:
            passInput.becomeFirstResponder()
        case passInput:
            pressBtn(textField)
        default:
            break
        }
        
        return false
    }
}

