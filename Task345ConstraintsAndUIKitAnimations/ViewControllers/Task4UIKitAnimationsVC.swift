//
//  UIKitAnimationsViewController.swift
//  Bllock5Practice3
//
//  Created by Богдан Бакун on 14.05.2023.
//

import UIKit

class Task4UIKitAnimationsVC: UIViewController {

    @IBOutlet weak var bounceView: UIView!
    @IBOutlet weak var bounceViewBottomConsraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        bounceView.layer.cornerRadius = 100
        bounceView.backgroundColor = .systemPink
    }

    @IBAction func bounceButtonPressed(_ sender: UIButton) {

        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 4, initialSpringVelocity: 5, options: [.autoreverse, .repeat]) {
            
            self.bounceViewBottomConsraint.constant = 450
            self.view.layoutIfNeeded()
        }
    }
}
