//
//  LoginViewController.swift
//  bankingApp
//
//  Created by miguel toledo on 16/09/22.
//

import UIKit

class LoginViewController: UIViewController {

    
    
    @IBOutlet weak var emailTF: CustomUITextField!
    
    @IBOutlet weak var passTF: CustomUITextField!
    
    @IBOutlet weak var emailErrorL: UILabel!
    
  
    @IBOutlet weak var passErrorL: UILabel!
    
    @IBOutlet weak var loginSubmitButton: UICustomButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       clearLoginForm()
    }
    
    
    @IBAction func emailchanged(_ sender: Any) {
        if let email = emailTF.text{
            if let error = isNecesaryArgument(email, "correo"){
                emailErrorL.text=error
                emailErrorL.isHidden=false
            }
            else{
                emailErrorL.isHidden=true
            }
        }
        checkValidLoginForm()
        
    }
    
  
    
    @IBAction func passChanged(_ sender: Any) {
        
        if let pass = passTF.text{
            if let error = isNecesaryArgument(pass, "contraseña"){
                passErrorL.text=error
                passErrorL.isHidden=false
            }
            else{
                passErrorL.isHidden=true
            }
        }
        checkValidLoginForm()
        
        
    }
    
    
    private func isNecesaryArgument(_ value:String,_ nameValue:String) -> String? {
        if value=="" {
            return "El \(nameValue) es obligatorio"
        }
            return nil
    }
    
    private func clearLoginForm(){
        loginSubmitButton.isEnabled=false
        emailErrorL.isHidden=false
        passErrorL.isHidden=false
        emailErrorL.text=""
        passErrorL.text=""
        emailTF.text=""
        passTF.text=""
    }

    private func checkValidLoginForm(){
        if(emailErrorL.isHidden && passErrorL.isHidden){
            loginSubmitButton.isEnabled=true
        }
        else{
            loginSubmitButton.isEnabled=false
        }
        
    }
}
