//
//  GameList.swift
//  accView
//
//  Created by andy on 09/08/2019.
//  Copyright © 2019 andy. All rights reserved.
//

import UIKit

class Game {
    var smallIcon: UIImage;
    var bigIcon: UIImage;
    var gameName: String;
    var ipList: WBlackList?;
    init(smallIcon: String, bigIcon: String, gameName: String) {
        self.bigIcon = UIImage(named: bigIcon)!;
        self.smallIcon = UIImage(named: smallIcon)!;
        self.gameName = gameName;
    }
   
}
