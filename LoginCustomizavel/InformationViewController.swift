//
//  InformationViewController.swift
//  LoginCustomizavel
//
//  Created by Fernando on 02/01/23.
//

import UIKit

class InformationViewController: UIViewController {
    
    private lazy var continueButton: UIButton = {
        let continueButton = UIButton()
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        continueButton.setTitle("Continue", for: .normal)
        continueButton.backgroundColor = UIColor(red: 0.9, green: 0.7, blue: 0.5, alpha: 1.0)
        continueButton.layer.cornerRadius = 5
        continueButton.addTarget(self, action: #selector(makeContinue), for: .touchUpInside)
        return continueButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(continueButton)
        view.backgroundColor = .red
        NSLayoutConstraint.activate([
            continueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),
            continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70),
            continueButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 150)
        ])
    }
    
    
    @objc func makeContinue(){
        let transicao = UIViewController()
        transicao.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(transicao, animated: true)
    }
}
