//
//  StartVC.swift
//  NFTs
//
//  Created by Tei Akpotosu-Nartey on 7/5/22.
//

import UIKit

class StartVC: UIViewController {
    
    let topBackground = UIImageView()
    let gradiantBackground = UIImageView()
    let startLabel = UILabel()
    let startButton = NFTConnectButton(title: "Start")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTopBackground()
        configureGradiantBackground()
        configureStartLabel()
        configureStartButton()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    @objc func pushBeginVC(){
        let beginVC = BeginVC()
        navigationController?.pushViewController(beginVC, animated: true)
    }
    

    func configureTopBackground(){
        
        view.addSubview(topBackground)
        topBackground.image = UIImage(named: "icons-background")
        topBackground.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topBackground.topAnchor.constraint(equalTo: view.topAnchor),
            topBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topBackground.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topBackground.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func configureGradiantBackground(){
        view.addSubview(gradiantBackground)
        gradiantBackground.image = UIImage(named: "gradiant-background")
        gradiantBackground.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            gradiantBackground.topAnchor.constraint(equalTo: view.topAnchor, constant: 130),
            gradiantBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            gradiantBackground.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            gradiantBackground.heightAnchor.constraint(equalToConstant: 140)
        ])
    }
    
    
    func configureStartLabel(){
        view.addSubview(startLabel)
        
        startLabel.text = "Buy, \nSell, &\nfall in love \nwith NFTs"
        startLabel.textColor = .systemBlue
        startLabel.lineBreakMode = .byWordWrapping
        startLabel.numberOfLines = 0
        startLabel.font = .systemFont(ofSize: 48, weight: .regular)
        
        startLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            startLabel.topAnchor.constraint(equalTo: gradiantBackground.bottomAnchor, constant: 2),
            startLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 55),
            startLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -55),
            startLabel.heightAnchor.constraint(equalToConstant: 250)
        ])
    }

    
    func configureStartButton(){
        view.addSubview(startButton)
        
        startButton.addTarget(self, action: #selector(pushBeginVC), for: .touchUpInside)
    
        startButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            startButton.topAnchor.constraint(equalTo: startLabel.bottomAnchor, constant: 60),
            startButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 55),
            startButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -55),
            startButton.heightAnchor.constraint(equalToConstant: 55)
            
        ])
    }
}
   
