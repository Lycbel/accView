//
//  BoostingViewController.swift
//  accView
//
//  Created by andy on 09/08/2019.
//  Copyright © 2019 andy. All rights reserved.
//

import UIKit

class BoostingViewController:  ViewController  {
    @IBOutlet weak var middleImage: RoundCircle!
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    override  func viewDidLoad() {
        super.viewDidLoad()
        middleImage.image = Context.currentGame!.bigIcon
    }

}
