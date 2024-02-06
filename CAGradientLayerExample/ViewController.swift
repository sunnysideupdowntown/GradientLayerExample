//
//  ViewController.swift
//  CAGradientLayerExample
//
//  Created by YOUNGSUN on 2/6/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightConstraints: NSLayoutConstraint!
    @IBOutlet weak var testView: UIView!
    private var gradientLayer: CAGradientLayer?
    private var observation: NSKeyValueObservation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.testView.layer.bounds
        self.testView.layer.addSublayer(gradientLayer)
        
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
        
        self.observation = self.testView.layer.observe(\.bounds) { _, _ in
            gradientLayer.frame = self.testView.layer.bounds
        }
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        self.heightConstraints.constant = 400
    }
}

