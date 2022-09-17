//
//  LoginPresenter.swift
//  bankingApp
//
//  Created by miguel toledo on 14/09/22.
//

import Foundation
import UIKit

protocol LoginDelegate: AnyObject {
    func loginUser(user:User)
    func enableLoginButton(flag:Bool)
}


typealias LoginPresenterDelegate = LoginDelegate & UIViewController

