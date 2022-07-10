//
//  ConnectWalletVC.swift
//  NFTs
//
//  Created by Tei Akpotosu-Nartey on 7/6/22.
//

import UIKit

class ConnectWalletVC: UIViewController {
    
    let connectYourWalletLabel = UILabel()
    let scanQRView = UIView()
    let signInView = UIView()
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        setupLabel()
    
        self.add(childVC: ScanQRCodeVC(), to: self.scanQRView)
        self.add(childVC: SignInVC(), to: self.signInView)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        connectSegmentedControl()
        configureScanQRView()
    }
    

    func add(childVC: UIViewController, to containerView: UIView){
       addChild(childVC)
        containerView.addSubview(childVC.view)
        childVC.view.frame = containerView.bounds
        childVC.didMove(toParent: self)
    }
    
    
    func setupLabel(){
        view.addSubview(connectYourWalletLabel)
     
        connectYourWalletLabel.text = "Connect your Wallet"
        connectYourWalletLabel.font = .systemFont(ofSize: 24, weight: .regular)
        
        connectYourWalletLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            connectYourWalletLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            connectYourWalletLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            connectYourWalletLabel.heightAnchor.constraint(equalToConstant: 30),
        ])
    }

    
func connectSegmentedControl(){
    let items = ["Scan QR Code", "Sign in"]
    let segmentedControl = UISegmentedControl(items: items)
    segmentedControl.addTarget(self, action:#selector(viewDidChange(_:)), for: .valueChanged)
    segmentedControl.selectedSegmentIndex = 0
    segmentedControl.translatesAutoresizingMaskIntoConstraints = false
    segmentedControl.tintColor = .white
    segmentedControl.backgroundColor = UIColor(red: 0.922, green: 0.949, blue: 0.98, alpha: 1)
    
    view.addSubview(segmentedControl)
    
    NSLayoutConstraint.activate([
        segmentedControl.topAnchor.constraint(equalTo: connectYourWalletLabel.bottomAnchor, constant: 16),
        segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
        segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
        segmentedControl.heightAnchor.constraint(equalToConstant: 45)
        
    ])
}

    @objc func viewDidChange(_ segmentedControl: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            configureScanQRView()
            signInView.isHidden = true
            scanQRView.isHidden = false
            
        case 1:
            configureSignInView()
            scanQRView.isHidden = true
            signInView.isHidden = false
        default:
            break
        }
    
//    if segmentedControl.selectedSegmentIndex == 0{
//        configureScanQRView()
//        signInView.isHidden = true
//    }
//    else if segmentedControl.selectedSegmentIndex == 1{
//        configureSignInView()
//        scanQRView.isHidden = true
//    }
    }
    
    func configureScanQRView(){
        view.addSubview(scanQRView)
        
        scanQRView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            scanQRView.topAnchor.constraint(equalTo: view.topAnchor, constant: 240),
            scanQRView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            scanQRView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            scanQRView.heightAnchor.constraint(equalToConstant: 500)
            
        ])
    }
    
    func configureSignInView(){
        view.addSubview(signInView)
        
        signInView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signInView.topAnchor.constraint(equalTo: view.topAnchor, constant: 220),
            signInView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            signInView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            signInView.heightAnchor.constraint(equalToConstant: 280)
        ])
    }
    
    func dismissView(){
        dismiss(animated: true)
    }
}
