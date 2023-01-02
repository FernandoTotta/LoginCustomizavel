//
//  ViewController.swift
//  LoginCustomizavel
//
//  Created by Fernando on 02/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var imagemGtr: UIImageView = {
        let image = UIImageView(image: UIImage(named: "NissanGTR"))
        image.layer.cornerRadius = 55
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var user: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.backgroundColor = UIColor(red: 0.9, green: 0.7, blue: 0.5, alpha: 1.0)
        text.placeholder = "Nome ou E-mail"
        text.layer.cornerRadius = 5
        text.font = UIFont(name:"Helvetica", size: 20)
        text.layer.borderWidth = 1
        return text
    }()
    
    private lazy var passWord: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.backgroundColor = UIColor(red: 0.9, green: 0.7, blue: 0.5, alpha: 1.0)
        text.placeholder = "Senha"
        text.layer.cornerRadius = 5
        text.font = UIFont(name:"Helvetica", size: 20)
        text.layer.borderWidth = 1
        return text
    }()
    
    private lazy var continueButton: UIButton = {
        let continueButton = UIButton()
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        continueButton.setTitle("Continue", for: .normal)
        continueButton.backgroundColor = UIColor(red: 0.9, green: 0.7, blue: 0.5, alpha: 1.0)
        continueButton.layer.cornerRadius = 5
        continueButton.addTarget(self, action: #selector(makeContinue), for: .touchUpInside)
        return continueButton
    }()
    
    @objc func makeContinue(){
        let transicao = InformationViewController()
        transicao.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(transicao, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imagemGtr)
        view.addSubview(user)
        view.addSubview(passWord)
        view.addSubview(continueButton)
        
        NSLayoutConstraint.activate([
            imagemGtr.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            imagemGtr.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imagemGtr.widthAnchor.constraint(equalToConstant: 120),
            imagemGtr.heightAnchor.constraint(equalToConstant: 120),
            
            user.topAnchor.constraint(equalTo: imagemGtr.bottomAnchor, constant: 50),
            user.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            user.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            
            passWord.topAnchor.constraint(equalTo: user.bottomAnchor, constant: 30),
            passWord.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            passWord.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            
            continueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),
            continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70),
            continueButton.bottomAnchor.constraint(equalTo: view.keyboardLayoutGuide.topAnchor, constant: -30)
        ])
    }


}



