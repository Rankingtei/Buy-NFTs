//
//  ConnectStepsView.swift
//  NFTs
//
//  Created by Tei Akpotosu-Nartey on 7/5/22.
//

import UIKit

class StepsView: UIView {

    let stepNumberView = StepNumberView()
    let stepMainLabel = UILabel()
    let stepSubLabel = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupView(){
        addSubview(stepNumberView)
        addSubview(stepMainLabel)
        addSubview(stepSubLabel)
        
        
        stepMainLabel.font = .systemFont(ofSize: 21, weight: .regular)
        stepSubLabel.font = .systemFont(ofSize: 14, weight: .regular)
        stepSubLabel.textColor = UIColor(red: 0.651, green: 0.718, blue: 0.831, alpha: 1)
        
        stepNumberView.translatesAutoresizingMaskIntoConstraints = false
        stepMainLabel.translatesAutoresizingMaskIntoConstraints = false
        stepSubLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stepNumberView.topAnchor.constraint(equalTo: self.topAnchor, constant: 2),
            stepNumberView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            
            stepMainLabel.topAnchor.constraint(equalTo: self.topAnchor ),
            stepMainLabel.leadingAnchor.constraint(equalTo: stepNumberView.trailingAnchor, constant: 8),
            stepMainLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            stepSubLabel.topAnchor.constraint(equalTo: stepMainLabel.bottomAnchor),
            stepSubLabel.leadingAnchor.constraint(equalTo: stepNumberView.trailingAnchor, constant: 8),
            stepSubLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }
}
