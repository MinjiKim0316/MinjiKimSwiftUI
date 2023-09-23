//
//  ViewController.swift
//  TextFieldProject
//
//  Created by Minji  Kim on 9/22/23.
//  Copyright © 2023 MinjiKimSwiftUI. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        setUp()
        
    }
    
    func setUp(){
        view.backgroundColor = UIColor.gray
        
        textField.keyboardType = UIKeyboardType.emailAddress
        textField.placeholder = "Please enter an email address"
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .always
        textField.returnKeyType = .google
        
        textField.becomeFirstResponder()
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        print("user began typing textfield.")
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //print(#function)
        //print(string)
        
        let maxLength = 25
        let currentString: NSString = (textField.text ?? "") as NSString
        let newString: NSString =  currentString.replacingCharacters(in: range, with: string) as NSString
        
        return newString.length <= maxLength
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        
        if textField.text == "" {
            textField.placeholder = "Please Type Something!"
            return false
        } else {
           return true
        }
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        print("typing textfield is done now.")
        textField.text = ""
    }
    
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        
        textField.resignFirstResponder()
        
    }
    
    
}

