//
//  ViewController.swift
//  Hello-CoreAnimation
//
//  Created by nsp on 21/2/17.
//  Copyright © 2017 nspool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var blueView : UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func doKeyframeFade() {
        let fadeAnimation = CAKeyframeAnimation(keyPath:"backgroundColor")
        fadeAnimation.duration = 2.0
        fadeAnimation.keyTimes = [ 0, 0.5, 1.0 ]
        fadeAnimation.values = [UIColor.red.cgColor, UIColor.green.cgColor, UIColor.blue.cgColor]
        blueView.layer.add(fadeAnimation, forKey:"backgroundColor")
    }
    
    func doBasicFade() {
        let fadeAnimation = CABasicAnimation(keyPath:"opacity")
        fadeAnimation.duration = 5.0
        fadeAnimation.fromValue = 0.0
        fadeAnimation.toValue = 1.0
        blueView.layer.add(fadeAnimation, forKey:"animateOpacity")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        doBasicFade()
        doKeyframeFade()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

