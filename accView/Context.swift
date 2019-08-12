//
//  Context.swift
//  accView
//
//  Created by andy on 09/08/2019.
//  Copyright © 2019 andy. All rights reserved.
//

import UIKit
var names = ["香肠派对", "王者荣耀", "降神", "神仙道", "天天打玻璃"]
class Context {
    static var currentUser : User = User()
    static private var _currentGame : Game?
    static var context: Context?
    static var _gameList: [Game] = [Game]()
    static var myGames: [Game] = [Game]()
    static var mainNav: UITabBarController?;
    static var isBoosting = false;
    static var currentGame: Game! {
        get {
            return _currentGame
        }
        
        set {
            _currentGame = newValue
        }
    }
    static var gameList: [Game] {
        get {
            getContext();
            return _gameList
        }
        set {
            _gameList = newValue
        }
    }
    static func getContext() -> Context {
        if (Context.context != nil) {
            return Context.context!
        }
        Context.context = Context()
        Context.currentGame = Game(smallIcon: "game/small/1", bigIcon: "game/big/1", gameName: "香肠派对")
        gameList.append(currentGame)
        for i in 1...4 {
            gameList.append(Game(smallIcon: "game/small/" + String(i), bigIcon: "game/big/" + String(i), gameName: names[i]))
        }
        print("init")
        return getContext()
    }
}
