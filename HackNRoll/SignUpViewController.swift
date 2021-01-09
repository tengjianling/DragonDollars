//
//  SignUpViewController.swift
//  HackNRoll
//
//  Created by Teng Jian Ling on 8/1/21.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var savingsAccPINField: UITextField!
    @IBOutlet weak var savingsAccIDField: UITextField!
    @IBOutlet weak var internetBankingPINField: UITextField!
    @IBOutlet weak var internetBankingIDField: UITextField!
    @IBOutlet weak var personalParticularsPasswordField: UITextField!
    @IBOutlet weak var personalParticularsEmailField: UITextField!
    @IBOutlet weak var signUpConfirmBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpConfirmBtn.layer.cornerRadius = 10
        
        changePlaceholderColor(textfield: savingsAccPINField, text: "PIN")
        // Do any additional setup after loading the view.
        changePlaceholderColor(textfield: savingsAccIDField, text: "Internet Banking ID")
        changePlaceholderColor(textfield: internetBankingPINField, text: "PIN")
        changePlaceholderColor(textfield: internetBankingIDField, text: "Internet Banking ID")
        changePlaceholderColor(textfield: personalParticularsEmailField, text: "Email")
        changePlaceholderColor(textfield: personalParticularsPasswordField, text: "Password")
        
        savingsAccPINField.delegate = self
        savingsAccIDField.delegate = self
        internetBankingPINField.delegate = self
        internetBankingIDField.delegate = self
        personalParticularsPasswordField.delegate = self
        personalParticularsEmailField.delegate = self
    }
    
    func changePlaceholderColor(textfield: UITextField, text: String) {
        textfield.attributedPlaceholder = NSAttributedString(string: text, attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
    }
    
    func textFieldShouldReturn(_ textfield: UITextField) -> Bool {
        savingsAccPINField.resignFirstResponder()
        savingsAccIDField.resignFirstResponder()
        internetBankingPINField.resignFirstResponder()
        internetBankingIDField.resignFirstResponder()
        personalParticularsPasswordField.resignFirstResponder()
        personalParticularsEmailField.resignFirstResponder()
        
        return true;
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
