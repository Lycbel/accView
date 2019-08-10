//
//  UserInfoViewController.swift
//  accView
//
//  Created by andy on 09/08/2019.
//  Copyright © 2019 andy. All rights reserved.
//

import UIKit

class UserInfoViewController: ViewController {
    override func viewDidLoad() {
        Context.currentGame?.bigIcon = UIImage(named: "circles/c1")!;
        super.viewDidLoad();
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
}
