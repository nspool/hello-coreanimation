//
//  ViewController.swift
//  Hello-CA
//
//  Created by nsp on 21/2/17.
//  Copyright © 2017 nspool. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

        @IBOutlet var blueView : NSView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        blueView.layer?.backgroundColor = NSColor.red.cgColor
        doKeyframeFade()
    }

    
    func doKeyframeFade() {
        let fadeAnimation = CAKeyframeAnimation(keyPath:"backgroundColor")
        fadeAnimation.duration = 2.0
        fadeAnimation.keyTimes = [ 0, 0.5, 1.0 ]
        fadeAnimation.values = [NSColor.red.cgColor, NSColor.green.cgColor, NSColor.blue.cgColor]
        blueView.layer?.add(fadeAnimation, forKey:"backgroundColor")
    }
    
    func doBasicFade() {
        let fadeAnimation = CABasicAnimation(keyPath:"opacity")
        fadeAnimation.duration = 5.0
        fadeAnimation.fromValue = 0.0
        fadeAnimation.toValue = 1.0
        blueView.layer?.add(fadeAnimation, forKey:"animateOpacity")
    }

}

