//
//  FiguresPresenter.swift
//  Figures
//
//  Created by Art Karma on 4/25/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import Foundation

protocol Presenter {
    var messageInfo: String {get}
}

class FiguresPresenter: Presenter {
    
    weak var view: FiguresView?
    var messageInfo = "Create view model for present"
   
}
