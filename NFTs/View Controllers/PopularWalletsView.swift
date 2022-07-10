//
//  PopularWalletsView.swift
//  NFTs
//
//  Created by Tei Akpotosu-Nartey on 7/5/22.
//

import UIKit

class PopularWalletsView: UIView {
    
    let popularWalletIcon = UIImageView()
    let popularWalletLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        addSubview(popularWalletIcon)
        addSubview(popularWalletLabel)
        
        popularWalletLabel.font = .systemFont(ofSize: 18, weight: .light)
        popularWalletLabel.textColor = .black
        
        popularWalletIcon.translatesAutoresizingMaskIntoConstraints = false
        popularWalletLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            popularWalletIcon.topAnchor.constraint(equalTo: self.topAnchor),
            popularWalletIcon.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            popularWalletIcon.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            popularWalletLabel.topAnchor.constraint(equalTo: self.topAnchor),
            popularWalletLabel.leadingAnchor.constraint(equalTo: popularWalletIcon.trailingAnchor, constant: 15),
            popularWalletLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            
        ])
    }
    
}

