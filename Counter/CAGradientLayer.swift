//
//  CAGradientLayer.swift
//  Counter
//
//  Created by Edgar on 9/16/16.
//  Copyright © 2016 Edgar Gante. All rights reserved.
//

import UIKit

    extension CAGradientLayer {
        
        func deepBlueGradientViewBackground() -> CAGradientLayer {
            let topColor = UIColor(red: 192.0/255.0, green: 72.0/255.0, blue: 72.0/255.0, alpha: 1.0)
            let bottomColor = UIColor(red: 72.0/255.0, green: 0.0/255.0, blue: 72.0/255.0, alpha: 1.0)
            let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
            let gradientLocations: [Float] = [0.0,  1.0]
            let gradientLayer: CAGradientLayer = CAGradientLayer()
            
            gradientLayer.colors = gradientColors
            gradientLayer.locations = gradientLocations as [NSNumber]?
            
            return gradientLayer
        }
    }

