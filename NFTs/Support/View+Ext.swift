//
//  Constants.swift
//  NFTs
//
//  Created by Tei Akpotosu-Nartey on 7/5/22.
//

import UIKit

extension UIView {

    func applyGradient(colours: [UIColor]) -> CAGradientLayer {
        return self.applyGradient(colours: colours, locations: nil)
    }


    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> CAGradientLayer {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = locations
        self.layer.insertSublayer(gradient, at: 0)
        return gradient
    }
}



















//let gradient: CAGradientLayer = {
//    let gradient = CAGradientLayer()
//    gradient.type = .axial
//    gradient.colors = [
//        UIColor(red: 0.153, green: 0.518, blue: 0.918, alpha: 1).cgColor,
//        UIColor(red: 0.216, green: 0.329, blue: 0.859, alpha: 1).cgColor,
//        UIColor(red: 0.114, green: 0.631, blue: 0.949, alpha: 1).cgColor,
//    ]
//    gradient.locations = [0, 0.5, 1]
////    view?.layout
//    return gradient
//}()
//
//extension UIView {
//    func layerGradient() {
//        let layer : CAGradientLayer = CAGradientLayer()
//        layer.frame.size = self.frame.size
//
//        let color0 = UIColor(red: 0.153, green: 0.518, blue: 0.918, alpha: 1).cgColor,
//        let color1 = UIColor(red: 0.216, green: 0.329, blue: 0.859, alpha: 1).cgColor,
//        let color2 = UIColor(red: 0.114, green: 0.631, blue: 0.949, alpha: 1).cgColor,
////        let color3 = UIColor(red:100.0/255, green:100.0/255, blue: 100.0/255, alpha:0.1).CGColor
////        let color4 = UIColor(red:50.0/255, green:50.0/255, blue:50.0/255, alpha:0.1).CGColor
////        let color5 = UIColor(red:0.0/255, green:0.0/255, blue:0.0/255, alpha:0.1).CGColor
////        let color6 = UIColor(red:150.0/255, green:150.0/255, blue:150.0/255, alpha:0.1).CGColor
//
//        layer.colors = [color0,color1,color2]
//        self.layer.insertSublayer(layer, at: 0)
//    }
//}
