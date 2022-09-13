//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Amirkhan Akaev on 10.09.2022.
//

import UIKit

enum TrafficLight {
    case red, yellow, green
}

final class ViewController: UIViewController {
    
    @IBOutlet private var redLight: UIView!
    @IBOutlet private var yellowLight: UIView!
    @IBOutlet private var greenLight: UIView!
    @IBOutlet private var startButton: UIButton!
    
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.2
    private var currentLight: TrafficLight = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        startButton.layer.cornerRadius = 10
        startButton.setTitle("Start", for: .normal)
        
        redLight.layer.cornerRadius = redLight.bounds.height / 2
        yellowLight.layer.cornerRadius = yellowLight.bounds.height / 2
        greenLight.layer.cornerRadius = greenLight.bounds.height / 2
    }
    
    @IBAction func startButtonTapped() {
        startButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case.red:
            redLight.alpha = lightOn
            greenLight.alpha = lightOff
            currentLight = .yellow
        case.yellow:
            yellowLight.alpha = lightOn
            redLight.alpha = lightOff
            currentLight = .green
        case.green:
            greenLight.alpha = lightOn
            yellowLight.alpha = lightOff
            currentLight = .red
        }
    }
    
}
