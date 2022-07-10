//
//  StepNumberView.swift
//  NFTs
//
//  Created by Tei Akpotosu-Nartey on 7/8/22.
//

import UIKit

class StepNumberView: UIView {

  let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

   private func configure(){
      addSubview(label)
      
      self.layer.cornerRadius = 20
      self.layer.masksToBounds = true
      self.clipsToBounds = true
      self.layer.backgroundColor = UIColor(red: 0.883, green: 0.908, blue: 1, alpha: 1).cgColor
      
      self.translatesAutoresizingMaskIntoConstraints = false
      label.translatesAutoresizingMaskIntoConstraints = false
      
      NSLayoutConstraint.activate([
        
        self.heightAnchor.constraint(equalToConstant: 40),
        self.widthAnchor.constraint(equalToConstant: 40),
        
        label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        label.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        
      ])
    }
}
