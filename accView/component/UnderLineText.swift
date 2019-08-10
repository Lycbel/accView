//
//  underLineText.swift
//  accView
//
//  Created by andy on 10/08/2019.
//  Copyright © 2019 andy. All rights reserved.
//

import UIKit

class UnderLineText: UITextField {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0,y:  self.frame.height - 1,width:  self.frame.width,height:  1.0)
        bottomLine.backgroundColor = UIColor.white.cgColor
        self.borderStyle = UITextField.BorderStyle.none
        self.layer.addSublayer(bottomLine)
    }
}
