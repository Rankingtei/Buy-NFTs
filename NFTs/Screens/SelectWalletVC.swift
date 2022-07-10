//
//  SelectWalletVC.swift
//  NFTs
//
//  Created by Tei Akpotosu-Nartey on 7/5/22.
//

import UIKit

class SelectWalletVC: UIViewController {
    
    let selectyourWalletLabel = UILabel()
    let searchWallet = UITextField()
    let popular = UILabel()
    let popularWallets = UIView()
    let walletDescription = UILabel()
    let createWallet = UILabel()
    let yourBackImage = UIImage(systemName: "chevron.backward")
  
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupView()

        self.add(childVC: PopularWalletsVC(), to: self.popularWallets)
    }
    
    
    func add(childVC: UIViewController, to containerView: UIView){
       addChild(childVC)
        containerView.addSubview(childVC.view)
        childVC.view.frame = containerView.bounds
        childVC.didMove(toParent: self)
    }
    
    @objc func checkAction(sender : UITapGestureRecognizer) {
        let connectWalletVC = ConnectWalletVC()
        navigationController?.pushViewController(connectWalletVC, animated: true)
    }
 
    
    func setupView(){
   
        view.addSubview(selectyourWalletLabel)
        view.addSubview(searchWallet)
        view.addSubview(popular)
        view.addSubview(popularWallets)
        view.addSubview(walletDescription)
        view.addSubview(createWallet)
        
        selectyourWalletLabel.text = "Select your wallet"
        selectyourWalletLabel.textAlignment = .left
        selectyourWalletLabel.font = .systemFont(ofSize: 24, weight: .medium)
        
        searchWallet.textColor = .black
        searchWallet.attributedPlaceholder = NSAttributedString(string:"  Search for Wallet", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1)])
        searchWallet.layer.cornerRadius = 8
        searchWallet.backgroundColor = UIColor(red: 0.922, green: 0.949, blue: 0.98, alpha: 1)
        
        popular.text = "Popular"
        popular.font = .systemFont(ofSize: 16, weight: .medium)
        
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.checkAction))
        self.popularWallets.addGestureRecognizer(gesture)

        walletDescription.font = .systemFont(ofSize: 12, weight: .regular)
        walletDescription.numberOfLines = 0
        walletDescription.text = "Your crypto wallet stores your digital assets and \ncryptocurrencies. Connect to or create a new wallet"
        walletDescription.textAlignment = .center
        
        createWallet.text = "No wallet? Create one "
        createWallet.textColor = .link
        createWallet.font = .systemFont(ofSize: 16)
        createWallet.textAlignment = .center
        
        selectyourWalletLabel.translatesAutoresizingMaskIntoConstraints = false
        searchWallet.translatesAutoresizingMaskIntoConstraints = false
        popular.translatesAutoresizingMaskIntoConstraints = false
        popularWallets.translatesAutoresizingMaskIntoConstraints = false
        walletDescription.translatesAutoresizingMaskIntoConstraints = false
        createWallet.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            selectyourWalletLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            selectyourWalletLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            selectyourWalletLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            selectyourWalletLabel.heightAnchor.constraint(equalToConstant: 30),
            
            searchWallet.topAnchor.constraint(equalTo: selectyourWalletLabel.bottomAnchor, constant: 10),
            searchWallet.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            searchWallet.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            searchWallet.heightAnchor.constraint(equalToConstant: 55),
            
            popular.topAnchor.constraint(equalTo: searchWallet.bottomAnchor, constant: 25),
            popular.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            popular.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            popular.heightAnchor.constraint(equalToConstant: 30),
            
            popularWallets.topAnchor.constraint(equalTo: popular.bottomAnchor, constant: 20),
            popularWallets.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            popularWallets.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            popularWallets.heightAnchor.constraint(equalToConstant: 320),
            
            walletDescription.topAnchor.constraint(equalTo: popularWallets.bottomAnchor, constant: 50),
            walletDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            walletDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            walletDescription.heightAnchor.constraint(equalToConstant: 40),
            
            createWallet.topAnchor.constraint(equalTo: walletDescription.bottomAnchor, constant: 15),
            createWallet.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 55),
            createWallet.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -55),
            createWallet.heightAnchor.constraint(equalToConstant: 55),
            
        ])
    }
}
