//
//  ViewController.swift
//  accView
//
//  Created by andy on 08/08/2019.
//  Copyright © 2019 andy. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addBackGround(backFileName: "backGround")
        print("did load")
    }

    func addBackGround(backFileName: String) {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: backFileName)
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }

}

