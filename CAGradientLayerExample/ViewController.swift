//
//  ViewController.swift
//  CAGradientLayerExample
//
//  Created by YOUNGSUN on 2/6/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.testView.layer.bounds
        self.testView.layer.addSublayer(gradientLayer)
        
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
    }
}

