//
//  PopularWalletsVC.swift
//  NFTs
//
//  Created by Tei Akpotosu-Nartey on 7/5/22.
//

import UIKit

class PopularWalletsVC: UIViewController {
    
    var popularWallet1: PopularWalletsView = {
        let wallet = PopularWalletsView()
        wallet.popularWalletIcon.image = UIImage(named: "coinbase-icon")
        wallet.popularWalletLabel.text = "Coinbase Wallet"
        return wallet
    }()
    
    var popularWallet2: PopularWalletsView = {
        let wallet = PopularWalletsView()
        wallet.popularWalletIcon.image = UIImage(named: "nearwallet-icon-1")
        wallet.popularWalletLabel.text = "Near Wallet"
        return wallet
    }()
    
    var popularWallet3: PopularWalletsView = {
        let wallet = PopularWalletsView()
        wallet.popularWalletIcon.image = UIImage(named: "trust-icon")
        wallet.popularWalletLabel.text = "Trust Wallet"
        return wallet
    }()
    
    var popularWallet4: PopularWalletsView = {
        let wallet = PopularWalletsView()
        wallet.popularWalletIcon.image = UIImage(named: "walletconnect-icon")
        wallet.popularWalletLabel.text = "Wallet Connect"
        return wallet
    }()
    
    var popularWallet5: PopularWalletsView = {
        let wallet = PopularWalletsView()
        wallet.popularWalletIcon.image = UIImage(named: "fortmatic-icon")
        wallet.popularWalletLabel.text = "Fortmatic"
        return wallet
    }()
    
    var popularWallet6: PopularWalletsView = {
        let wallet = PopularWalletsView()
        wallet.popularWalletIcon.image = UIImage(named: "portiswallet")
        wallet.popularWalletLabel.text = "Portis"
        return wallet
    }()
    
    lazy var containerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [popularWallet1, popularWallet2, popularWallet3, popularWallet4, popularWallet5, popularWallet6])
        stackView.axis = .vertical
        stackView.distribution = .equalCentering
        stackView.spacing = 14
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()

}
    
    func setupView(){
        view.addSubview(containerStackView)
        
        NSLayoutConstraint.activate([
            containerStackView.topAnchor.constraint(equalTo: view.topAnchor),
            containerStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    
        ])
    }
}
