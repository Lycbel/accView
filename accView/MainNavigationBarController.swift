//
//  MainNavigationBarController.swift
//  accView
//
//  Created by andy on 09/08/2019.
//  Copyright © 2019 andy. All rights reserved.
//

import UIKit

class MainNavigationBarController: UITabBarController {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        Context.mainNav = self
    }
    
}
