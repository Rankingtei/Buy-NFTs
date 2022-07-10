//
//  ScanQRCodeVC.swift
//  NFTs
//
//  Created by Tei Akpotosu-Nartey on 7/6/22.
//

import UIKit


class ScanQRCodeVC: UIViewController {
    
    let cameraView = UIView()
    let cameraInstruction = UILabel()
    let selectfromCameraRoll = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()

    }
    
    func configureView(){
        view.addSubview(cameraView)
        view.addSubview(cameraInstruction)
        view.addSubview(selectfromCameraRoll)
        
        
        cameraView.backgroundColor = .black
        
        cameraInstruction.text = "Place the QR Code well within the designated \narea and hold for a few seconds. \n\nOR"
        cameraInstruction.numberOfLines = 0
        cameraInstruction.textAlignment = .center
        cameraInstruction.font = .systemFont(ofSize: 12, weight: .medium)
        
        selectfromCameraRoll.text = "Select from camera roll"
        selectfromCameraRoll.textColor = .link
        selectfromCameraRoll.textAlignment = .center
        selectfromCameraRoll.font = .systemFont(ofSize: 16, weight: .regular)
        
        cameraView.translatesAutoresizingMaskIntoConstraints = false
        cameraInstruction.translatesAutoresizingMaskIntoConstraints = false
        selectfromCameraRoll.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            
            cameraView.topAnchor.constraint(equalTo: view.topAnchor),
            cameraView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            cameraView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            cameraView.bottomAnchor.constraint(equalTo: cameraInstruction.topAnchor, constant: -60),
            
            cameraInstruction.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 56),
            cameraInstruction.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -56),
            cameraInstruction.heightAnchor.constraint(equalToConstant: 30),
            cameraInstruction.bottomAnchor.constraint(equalTo: selectfromCameraRoll.topAnchor, constant: -50),
            
            selectfromCameraRoll.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            selectfromCameraRoll.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            selectfromCameraRoll.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50)
           
        
        ])
        
    }
 

}
