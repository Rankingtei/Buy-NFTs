//
//  ConnectStepsVC.swift
//  NFTs
//
//  Created by Tei Akpotosu-Nartey on 7/5/22.
//

import UIKit

class StepsVC: UIViewController {
    
    var step1: StepsView = {
        let step = StepsView()
        step.stepNumberView.label.text = "1"
        step.stepMainLabel.text = "Connect your Wallet"
        step.stepSubLabel.text = "Near, Metamask, Coinbase etc."
        return step
    }()
    
    var step2: StepsView = {
        let step = StepsView()
        step.stepNumberView.label.text = "2"
        step.stepMainLabel.text = "Complete your profile"
        step.stepSubLabel.text = "Our lawyers say we need to ask this"
        return step
    }()
    
    var step3: StepsView = {
        let step = StepsView()
        step.stepNumberView.label.text = "3"
        step.stepMainLabel.text = "Explore"
        step.stepSubLabel.text = "Dora must be shaking right now"
        return step
    }()
    
    lazy var containerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [step1, step2, step3])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
//        stackView.alignment = .leading
//        stackView.spacing = 16
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
//            containerStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            containerStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    
        ])
        
    }
 
}
