//
//  ViewController.swift
//  Bllock5Practice3
//
//  Created by Богдан Бакун on 13.05.2023.
//

import UIKit

class Task5UIKitAnimationsVC: UIViewController {

    @IBOutlet weak var runView: UIView!
    @IBOutlet weak var runButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        runView.layer.cornerRadius = 35
    }

    @IBAction func runButtonPressed(_ sender: UIButton) {
        
        UIView.animateKeyframes(withDuration: 2.0, delay: 0, options: [.calculationModeLinear]) {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5) {
                self.runView.frame.origin = CGPoint(x: 50, y: 200)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5, animations: {
                self.runView.frame.origin = CGPoint(x: UIScreen.main.bounds.width + 100, y: 0)
            })
            
        } completion: { _ in
            UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseOut], animations: {
                self.runView.alpha = 0.0
            }, completion: { _ in
                self.runView.removeFromSuperview()
                self.runButton.isEnabled = false
            })
        }
    }
    
}


