//
//  GradientBGView.swift
//  CAGradientLayerExample
//
//  Created by YOUNGSUN on 2/6/24.
//

import UIKit

final class GradientBGView: UIView {
    
    private var gradientLayer: CAGradientLayer?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addGradientLayer()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.addGradientLayer()
    }
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        layer.sublayers?.forEach { $0.frame = layer.bounds }
    }
    
    private func addGradientLayer() {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.layer.bounds
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
        
        self.layer.addSublayer(gradientLayer)
    }
}
