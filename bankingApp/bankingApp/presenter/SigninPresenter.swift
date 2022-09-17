//
//  SigninPresenter.swift
//  bankingApp
//
//  Created by miguel toledo on 14/09/22.
//

import Foundation
import UIKit

protocol SigninDelegate: AnyObject {
    func SinginUser(user:User)
    func enableSingninButton(flag:Bool)
}

typealias signinPresenterDelegate = SigninDelegate & UIViewController


class SigninPresenter {
    weak var delegate: signinPresenterDelegate?
    var authPetition:AuthPetition
    
    init(){
        authPetition=AuthPetition()
    }
    
    public func setViewDelegate(delegate: signinPresenterDelegate) {
        self.delegate = delegate
    }
    
    
    public func signinUser(user:UserDto){
       
    
    }
    
    
    
    
    
    
    
}

