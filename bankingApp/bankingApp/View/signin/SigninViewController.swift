//
//  SigninViewController.swift
//  bankingApp
//
//  Created by miguel toledo on 15/09/22.
//

import UIKit

class SigninViewController: UIViewController {

    //email
    @IBOutlet weak var emailTF: CustomUITextField!
    @IBOutlet weak var emailErrorL: UILabel!
    
    //password
    @IBOutlet weak var passwordTF: CustomUITextField!
    @IBOutlet weak var passwordErrorL: UILabel!
    
    //name
    @IBOutlet weak var nameTF: CustomUITextField!
    @IBOutlet weak var nameErrorL: UILabel!
    
    //lastname
    @IBOutlet weak var lastNameTF: CustomUITextField!
    @IBOutlet weak var lastNameErrorL: UILabel!
    
    //phone
    @IBOutlet weak var phoneTF: CustomUITextField!
    @IBOutlet weak var phoneErrorL: UILabel!
    
    //birthday
    @IBOutlet weak var birthdayTF: CustomUITextField!
    @IBOutlet weak var birthdayErrorL: UILabel!
    
    
    @IBOutlet weak var submitSinginButton: UICustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearSinginForm()
    }
    

    func clearSinginForm(){
        submitSinginButton.isEnabled=false
        emailErrorL.isHidden=false
        passwordErrorL.isHidden=false
        nameErrorL.isHidden=false
        lastNameErrorL.isHidden=false
        phoneErrorL.isHidden=false
        birthdayErrorL.isHidden=false
        
        emailErrorL.text=""
        passwordErrorL.text=""
        nameErrorL.text=""
        lastNameErrorL.text=""
        phoneErrorL.text=""
        birthdayErrorL.text=""
        
        emailTF.text=""
        passwordTF.text=""
        nameTF.text=""
        lastNameTF.text=""
        phoneTF.text=""
        birthdayTF.text = ""
    
    }
    
    
    @IBAction func emailChanged(_ sender: Any) {
        if let email = emailTF.text{
            if let error = checkEmailFormat(email){
                emailErrorL.text=error
                emailErrorL.isHidden=false
            }
            else{
                emailErrorL.isHidden=true
            }
        }
        checkValidSingupForm()
    }
    
    
    private func checkEmailFormat(_ value:String) ->String?{
        let reqularExpression = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
                let predicate = NSPredicate(format: "SELF MATCHES %@", reqularExpression)
        if value == ""{
            return "El correo electronico es obligatorio"
        }
        if !predicate.evaluate(with: value)
        {
            return "Correo electronico incorrecto"
        }
        
        return nil
    }

    
    @IBAction func passwordChanged(_ sender: Any) {
        if let pass = passwordTF.text{
            if let error = checkPasswordFormat(pass){
                passwordErrorL.text = error
                passwordErrorL.isHidden=false
            }
            else{
                passwordErrorL.isHidden=true
            }
        }
        checkValidSingupForm()
        
    }
    
    
    private func checkPasswordFormat(_ value:String) -> String?{
        if value.count < 8
                {
                    return "La contraseña debe de tener almenos 8 caracteres"
                }
                if containsDigit(value)
                {
                    return "La constraseña debe contener almenos 1 digito"
                }
                if containsUpperCase(value)
                {
                    return "La constaseña debe contener almenos una mayuscula"
                }
                return nil
        
    }
    
    private func containsDigit(_ value: String) -> Bool
        {
            let reqularExpression = ".*[0-9]+.*"
            let predicate = NSPredicate(format: "SELF MATCHES %@", reqularExpression)
            return !predicate.evaluate(with: value)
        }
        
  
        
        private func containsUpperCase(_ value: String) -> Bool
        {
            let reqularExpression = ".*[A-Z]+.*"
            let predicate = NSPredicate(format: "SELF MATCHES %@", reqularExpression)
            return !predicate.evaluate(with: value)
        }
    
    
    @IBAction func nameChanged(_ sender: Any) {
        if let name = nameTF.text{
            if let error = isNecesaryArgument(name, "nombre"){
                nameErrorL.text=error
                nameErrorL.isHidden=false
            }
            else{
                nameErrorL.isHidden=true
            }
        }
        checkValidSingupForm()
    
    }
    
    
    @IBAction func phoneChanged(_ sender: Any) {
  
        if let phone = phoneTF.text{
            if let error = checkPhoneFormat(phone){
                phoneErrorL.text=error
                phoneErrorL.isHidden=false
            }
            else{
                phoneErrorL.isHidden=true
            }
        }
        checkValidSingupForm()
    }

    private func checkPhoneFormat(_ value:String) -> String?{
        if value=="" {
               return  "El telefono es obligatorio"
        }
        if !CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: value)){
            return "El telefono solo debe de  contener numeros "
        }
        if value.count != 10{
            return "El telefono debe tener almenos 10 digitos"
        }
        
        return nil
    }
    
    private func isNecesaryArgument(_ value:String,_ nameValue:String) -> String? {
        if value=="" {
            return "El \(nameValue) es obligatorio"
        }
            return nil
    }

    
    
    @IBAction func birthdayChanged(_ sender: Any)  {
        if let birthay = birthdayTF.text{
            if let error = isNecesaryArgument(birthay, "fecha de nacimiento"){
                birthdayErrorL.text=error
                birthdayErrorL.isHidden=false
            }
            else{
                birthdayErrorL.isHidden=true
            }
        }
        checkValidSingupForm()
        
    }
    
    
    
    @IBAction func lastNameChanged(_ sender: Any) {
        if let lastName = lastNameTF.text{
            if let error = isNecesaryArgument(lastName, "apellido"){
                lastNameErrorL.text=error
                lastNameErrorL.isHidden=false
            }
            else{
                lastNameErrorL.isHidden=true
            }
        }
        checkValidSingupForm()
    }
    
    private func checkValidSingupForm(){
        print("\n\n\n")
        print("lastnames " + "\(lastNameErrorL.isHidden)")
        print("name " + "\(nameErrorL.isHidden)")
        print("email " + "\(emailErrorL.isHidden)")
        print("password " + "\(passwordErrorL.isHidden)")
        print("birt " + "\(birthdayErrorL.isHidden)")
        print("phone " + "\(phoneErrorL.isHidden)")
        if (lastNameErrorL.isHidden && nameErrorL.isHidden && emailErrorL.isHidden && passwordErrorL.isHidden && birthdayErrorL.isHidden && phoneErrorL.isHidden ){
            submitSinginButton.isEnabled=true
            print("VERDADEROOOO")
        }
        else{
            submitSinginButton.isEnabled=false
            print("Falsoooo")
            
        }
        
    }

    
    
}
