//
//  ViewController.swift
//  CAGradientLayerExample
//
//  Created by YOUNGSUN on 2/6/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testView: UIView!
    private var gradientLayer: CAGradientLayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.testView.layer.bounds
        self.testView.layer.addSublayer(gradientLayer)
        
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
        self.gradientLayer = gradientLayer
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        let animation = CABasicAnimation(keyPath: "colors")
        animation.fromValue = [UIColor.red.cgColor, UIColor.blue.cgColor]
        animation.toValue = [UIColor.green.cgColor, UIColor.yellow.cgColor]
        animation.duration = 3.0
        animation.autoreverses = true
        animation.repeatCount = Float.infinity

        self.gradientLayer?.add(animation, forKey: nil)
    }
}

