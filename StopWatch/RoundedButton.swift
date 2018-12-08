//
//  RoundedButton.swift
//  StopWatch
//
//  Created by Mark Wirz on 08.12.18.
//  Copyright © 2018 Mark Wirz. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {

    override func awakeFromNib() {
        layer.cornerRadius = frame.size.height / 4
    }

}
