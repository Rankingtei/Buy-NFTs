//
//  BeginVC.swift
//  NFTs
//
//  Created by Tei Akpotosu-Nartey on 7/5/22.
//

import UIKit

class BeginVC: UIViewController {
    
    let beginLabel = UILabel()
    let connectSteps = UIView()
    let connectWalletButton = NFTConnectButton(title: "Connect Wallet")
    let createWalletLink = UILabel()
    let imageAttachment = NSTextAttachment()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureBeginView()
        
        self.add(childVC: StepsVC(), to: self.connectSteps)

    }
    
    
    @objc func pushSelectWalletVC(){
        let selectWalletVC = SelectWalletVC()
        navigationController?.pushViewController(selectWalletVC, animated: true)
    }
    
    func add(childVC: UIViewController, to containerView: UIView){
       addChild(childVC)
        containerView.addSubview(childVC.view)
        childVC.view.frame = containerView.bounds
        childVC.didMove(toParent: self)
    }
    
    
    func configureBeginView(){
        view.addSubview(beginLabel)
        view.addSubview(connectSteps)
        view.addSubview(connectWalletButton)
        view.addSubview(createWalletLink)
        
        beginLabel.text = "Begin your NFT \njourney in..."
        beginLabel.numberOfLines = 0
        beginLabel.font = .systemFont(ofSize: 34)
        beginLabel.textAlignment = .left
        
        connectWalletButton.addTarget(self, action: #selector(pushSelectWalletVC), for: .touchUpInside)
        
        createWalletLink.text = "No wallet? Create one "
        createWalletLink.textColor = .link
        createWalletLink.font = .systemFont(ofSize: 16)
        createWalletLink.textAlignment = .center
        
        beginLabel.translatesAutoresizingMaskIntoConstraints = false
        connectSteps.translatesAutoresizingMaskIntoConstraints = false
        connectWalletButton.translatesAutoresizingMaskIntoConstraints = false
        createWalletLink.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            beginLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            beginLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 55),
            beginLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35),
          
            connectSteps.topAnchor.constraint(equalTo: beginLabel.bottomAnchor, constant: 45),
            connectSteps.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 55),
            connectSteps.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -55),
            connectSteps.bottomAnchor.constraint(equalTo: connectWalletButton.topAnchor, constant: -40),
        
            connectWalletButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 55),
            connectWalletButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -55),
            connectWalletButton.heightAnchor.constraint(equalToConstant: 55),
            connectWalletButton.bottomAnchor.constraint(equalTo: createWalletLink.topAnchor, constant: -90),
            
            createWalletLink.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 55),
            createWalletLink.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -55),
            createWalletLink.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100)
            
        ])
    }
}
