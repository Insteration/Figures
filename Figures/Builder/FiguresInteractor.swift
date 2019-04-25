//
//  FigureInteractor.swift
//  Figures
//
//  Created by Art Karma on 4/25/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import Foundation

protocol Interactor {
    init(presenter: Presenter)
}

class FiguresInteractor: Interactor {
    var presenter: Presenter!
    
    required init(presenter: Presenter) {
        self.presenter = presenter
    }
}
