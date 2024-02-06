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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        self.heightConstraints.constant = 400
    }
}

