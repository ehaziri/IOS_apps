//
//  RoundButton.swift
//  CalculatorApp
//
//  Created by Xona on 12/29/17.
//  Copyright © 2017 HappyFeet. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var roundButton:Bool = false{
        didSet{
            if roundButton{
                layer.cornerRadius = frame.height / 2
            }
        }
    }
    override func prepareForInterfaceBuilder() {
        if roundButton{
            layer.cornerRadius = frame.height / 2
        }
    }
}
