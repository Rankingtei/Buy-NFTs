//
//  SignInVC.swift
//  NFTs
//
//  Created by Tei Akpotosu-Nartey on 7/6/22.
//

import UIKit

class SignInVC: UIViewController {
    
    let WalletIcon = UIImageView()
    let emailLabel = UILabel()
    let emailTextField = UITextField()
    let recoveryPassphraseLabel = UILabel()
    let recoveryPassPhraseTextField = UITextField()
    let connectWalletButton = NFTConnectButton(title: "Connect Wallet")
    let noAccountLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureWalletIcon()
        configureemailLabel()
        configureEmailTextField()
        configureRecoveryPassPhraseLabel()
        configureRecoveryPassphraseTextField()
        configureConnectWalletButton()
        configureNoAccountLabel()
        
    }
    
    
    func configureWalletIcon(){
        view.addSubview(WalletIcon)
        WalletIcon.image = UIImage(named: "nearwallet-icon-1")
        
        WalletIcon.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            WalletIcon.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            WalletIcon.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            WalletIcon.heightAnchor.constraint(equalToConstant: 68),
            WalletIcon.widthAnchor.constraint(equalToConstant: 68)
        ])
    }
    
    
    func configureemailLabel(){
        view.addSubview(emailLabel)
        
        emailLabel.text = "Email"
        emailLabel.font = .systemFont(ofSize: 15)
        
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: WalletIcon.bottomAnchor, constant: 24),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27),
            emailLabel.heightAnchor.constraint(equalToConstant: 22)
        ])
    }
    
    
    func configureEmailTextField(){
        view.addSubview(emailTextField)
        
        emailTextField.placeholder = "  Enter your Email"
        emailTextField.layer.cornerRadius = 8
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor(red: 0.933, green: 0.937, blue: 0.941, alpha: 1).cgColor
        emailTextField.layer.backgroundColor = UIColor.white.cgColor
        
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 8),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -27),
            emailTextField.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
    
    
    func configureRecoveryPassPhraseLabel(){
        view.addSubview(recoveryPassphraseLabel)
        
        recoveryPassphraseLabel.text = "Recovery Passphrase"
        recoveryPassphraseLabel.font = .systemFont(ofSize: 15)
        
        recoveryPassphraseLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            recoveryPassphraseLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 24),
            recoveryPassphraseLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27),
            recoveryPassphraseLabel.heightAnchor.constraint(equalToConstant: 22)
        ])
    }
    
    
    func configureRecoveryPassphraseTextField(){
        view.addSubview(recoveryPassPhraseTextField)
        
        recoveryPassPhraseTextField.placeholder = "  Enter recovery passphrase"
        recoveryPassPhraseTextField.layer.cornerRadius = 8
        recoveryPassPhraseTextField.layer.borderWidth = 1
        recoveryPassPhraseTextField.layer.borderColor = UIColor(red: 0.933, green: 0.937, blue: 0.941, alpha: 1).cgColor
        recoveryPassPhraseTextField.layer.backgroundColor = UIColor.white.cgColor
        
        recoveryPassPhraseTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            recoveryPassPhraseTextField.topAnchor.constraint(equalTo: recoveryPassphraseLabel.bottomAnchor, constant: 8),
            recoveryPassPhraseTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27),
            recoveryPassPhraseTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -27),
            recoveryPassPhraseTextField.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
    
    
    func configureConnectWalletButton(){
        view.addSubview(connectWalletButton)
        
//        connectWalletButton.layer.addSublayer(gradient)
//        connectWalletButton.layer.allowsGroupOpacity = false
//        connectWalletButton.setTitle("Connect Wallet", for: .normal)
//        connectWalletButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .heavy)
//        connectWalletButton.layer.cornerRadius = 25
//        connectWalletButton.backgroundColor = .systemBlue
//        connectWalletButton.tintColor = .white
        connectWalletButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            connectWalletButton.topAnchor.constraint(equalTo: recoveryPassPhraseTextField.bottomAnchor, constant: 50),
            connectWalletButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 55),
            connectWalletButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -55),
            connectWalletButton.heightAnchor.constraint(equalToConstant: 55),
        ])
    }
    
    func configureNoAccountLabel(){
        view.addSubview(noAccountLabel)
        
        noAccountLabel.text = "No account? Sign up on Coinbase"
        noAccountLabel.textColor = .link
        noAccountLabel.textAlignment = .center
        noAccountLabel.font = .systemFont(ofSize: 16, weight: .regular)
        
        noAccountLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            noAccountLabel.topAnchor.constraint(equalTo: connectWalletButton.bottomAnchor, constant: 40),
            noAccountLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            noAccountLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
        ])
        
    }
}
