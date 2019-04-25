//
//  Figures.swift
//  Figures
//
//  Created by Art Karma on 4/25/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class FiguresView: UIView {
    
    let interactor: Interactor!
    
    init(interactor: Interactor) {
        self.interactor = interactor
        super.init(frame: CGRect())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
