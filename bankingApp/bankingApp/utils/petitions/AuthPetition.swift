//
//  AuthPetition.swift
//  bankingApp
//
//  Created by miguel toledo on 14/09/22.
//

import Foundation


class AuthPetition{
    let authURL=URLconfigure()
    let AUTH_PATH="auth"
   
    
    func registerUser(user:User){
        authURL.setPath(path: "\(AUTH_PATH)/signin")
        RequestPetition.sendGetRequest(urlData: authURL){result in
            switch result {
               case .success(let count):
                   print("\(count) unread messages.")
               case .failure(let error):
                   print(error.localizedDescription)
               }
            
        }
    }
    
    
    
    func loginUser(user:User){
        authURL.setPath(path: "\(AUTH_PATH)/login")
        RequestPetition.sendPostRequest(urlData: authURL, objectData: user){
            result in
            switch result {
               case .success(let result):
                //manejar los codigos de respues y devolver el resultado correspondiente
                break
               case .failure(let error):
                   print(error)
               }

        }
        
    }
    

}
