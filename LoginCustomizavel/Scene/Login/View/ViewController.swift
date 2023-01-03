//
//  ViewController.swift
//  LoginCustomizavel
//
//  Created by Fernando on 02/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    var custonView: LoginView?
    private lazy var alertInformation: UIAlertController = {
        let alertController = UIAlertController(title: "Um dos campos está vazio", message: "Preencher os campos", preferredStyle: .alert)

        let alertActions = UIAlertAction(title: "Cancelar", style: .cancel)
        alertController.addAction(alertActions)
        return alertController
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        custonView = LoginView()
        view = custonView
        
        custonView?.actions = {
            self.userInfo()
        }
    }
    
    private func userInfo() {
        let user = custonView?.getInformation()
        if user == nil {
            self.present(alertInformation, animated: true)
        } else {
            let infoVC = InformationViewController()
            infoVC.title = user?.userIndifier
            infoVC.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(infoVC, animated: true)
        }
    }
}



