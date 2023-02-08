//
//  ViewController.swift
//  TrabalhandoTextField
//
//  Created by Vitor Guilherme da Silva Costa on 08/02/23.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var mainTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainTextField.delegate = self
        self.lastNameTextField.delegate = self
        // Do any additional setup after loading the view.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.isEqual(self.mainTextField){
            self.lastNameTextField.becomeFirstResponder()
        }else{
            self.lastNameTextField.resignFirstResponder()
        }
        
        print("textFieldShouldReturn \(textField.text)")
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.backgroundColor = .gray
    }
}

