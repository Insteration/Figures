//
//  FiguresBuilder.swift
//  Figures
//
//  Created by Art Karma on 4/25/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class FiguresBuilder: FiguresModule {
    
    var frame: CGRect?
    var color: UIColor?
    var cornerRadius: CGFloat?
    
    func setFrame(_ frame: CGRect) -> FiguresBuilder {
        self.frame = frame
        return self
    }
    
    func setColor(_ color: UIColor) -> FiguresBuilder {
        self.color = color
        return self
    }
    
    func setCornerRadius(_ radius: CGFloat) -> FiguresBuilder {
        self.cornerRadius = radius
        return self
    }
    
    
    func builder() -> UIView {
        let presenter = FiguresPresenter()
        let interactor = FiguresInteractor.init(presenter: presenter)
        let view = FiguresView.init(interactor: interactor)
        view.frame = frame!
        view.backgroundColor = color
        if cornerRadius != nil {
            view.layer.cornerRadius = cornerRadius!
        }
        presenter.view = view
        return view
    }
    
    
}
