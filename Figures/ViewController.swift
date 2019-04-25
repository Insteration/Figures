//
//  ViewController.swift
//  Figures
//
//  Created by Art Karma on 4/25/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let square = FiguresBuilder().setFrame(CGRect(x: 300, y: 210, width: 100, height: 100)).setColor(.green).builder()
        let diamond = FiguresBuilder().setFrame(CGRect(x: 10, y: 160, width: 100, height: 100)).setColor(.red).setCornerRadius(150).builder()
        let circle = FiguresBuilder().setFrame(CGRect(x: 150, y: 110, width: 100, height: 100)).setColor(.purple).setCornerRadius(50).builder()
        
        self.view.addSubview(square)
        self.view.addSubview(diamond)
        self.view.addSubview(circle)

    }


}

