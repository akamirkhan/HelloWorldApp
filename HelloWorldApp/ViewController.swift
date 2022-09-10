//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Amirkhan Akaev on 02.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var helloWorldLabel: UILabel!
    @IBOutlet var showTextButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }

    @IBAction func showButtonPressed() {
        helloWorldLabel.isHidden.toggle()
        helloWorldLabel.isHidden
        ? showTextButton.setTitle("Show Text", for: .normal)
        : showTextButton.setTitle("Hide Text", for: .normal)
    }
    
    func setupUI() {
        helloWorldLabel.isHidden = true
        showTextButton.layer.cornerRadius = 10
    }
    
}

