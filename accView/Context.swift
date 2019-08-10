//
//  Context.swift
//  accView
//
//  Created by andy on 09/08/2019.
//  Copyright © 2019 andy. All rights reserved.
//

import UIKit

class Context {
    static var currentUser : User = User()
    static private var _currentGame : Game?
    static var context: Context?
    static var gameList: [Game] = [Game]()
    static var myGames: [Game] = [Game]()
    static var currentGame: Game! {
        get {
            return _currentGame
        }
        
        set {
            _currentGame = newValue
        }
    }
    static func getContext() -> Context {
        if (Context.context != nil) {
            return Context.context!
        }
        Context.context = Context()
        Context.currentGame = Game(smallIcon: "game/small/1", bigIcon: "game/big/1", gameName: "香肠派对")
         print("init")
        return getContext()
    }
}
