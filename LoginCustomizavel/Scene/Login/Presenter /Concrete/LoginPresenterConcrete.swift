//
//  LoginPresenterConcrete.swift
//  LoginCustomizavel
//
//  Created by Fernando Vieira on 03/01/23.
//

import Foundation
    
class LoginPresenterConcrete: LoginPresenter {
    var delegate: viewControllerProtocol
    init(delegate: viewControllerProtocol) {
        self.delegate = delegate
    }
    func check(user: UserInformation?) {
        if user == nil {
            delegate.showError()
        } else {
            delegate.goToHome()
        }
    }
    
    
}
