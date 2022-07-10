//
//  NFTConnectButton.swift
//  NFTs
//
//  Created by Tei Akpotosu-Nartey on 7/8/22.
//

import UIKit

class NFTConnectButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(title: String){
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure(){
        
        layer.cornerRadius = 25
        titleLabel?.font = .systemFont(ofSize: 22, weight: .heavy)
        
    
    }
        private lazy var gradientLayer: CAGradientLayer = {
               let l = CAGradientLayer()
               l.frame = self.bounds
               l.colors = [UIColor(red: 0.216, green: 0.329, blue: 0.859, alpha: 1).cgColor,
                          UIColor(red: 0.153, green: 0.518, blue: 0.918, alpha: 1).cgColor,]
               l.startPoint = CGPoint(x: 0, y: 0.5)
               l.endPoint = CGPoint(x: 1, y: 0.5)
               l.cornerRadius = 25
               layer.insertSublayer(l, at: 0)
               return l
           }()
        
    }
    
    
    
//    func set(title: String){
//        setTitle(title, for: .normal)
//    }
//
//}
