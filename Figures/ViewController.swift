//
//  ViewController.swift
//  Figures
//
//  Created by Art Karma on 4/25/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var animator: UIDynamicAnimator!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let square = FiguresBuilder().setFrame(CGRect(x: 300, y: 210, width: 100, height: 100)).setColor(.green).builder()
        let diamond = FiguresBuilder().setFrame(CGRect(x: 10, y: 160, width: 100, height: 100)).setColor(.red).setCornerRadius(150).builder()
        let circle = FiguresBuilder().setFrame(CGRect(x: 150, y: 110, width: 100, height: 100)).setColor(.purple).setCornerRadius(50).builder()
        let rectangle = FiguresBuilder().setFrame(CGRect(x: 0, y: 400, width: 600, height: 30)).setColor(.orange).builder()
        
        self.view.addSubview(square)
        self.view.addSubview(diamond)
        self.view.addSubview(circle)
        self.view.addSubview(rectangle)
        
        animator = UIDynamicAnimator(referenceView: self.view)
        let gravity = UIGravityBehavior(items: [square, diamond, circle])
        gravity.magnitude = 0.1
        animator.addBehavior(gravity)
        
        let collision = UICollisionBehavior(items: [square, diamond, circle, rectangle])
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
    }


}

