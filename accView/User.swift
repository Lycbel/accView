//
//  User.swift
//  accView
//
//  Created by andy on 09/08/2019.
//  Copyright © 2019 andy. All rights reserved.
//

import UIKit
struct LogInBack {
    var code: Int8
    var userName: String?
    var nickName: String?
}

class User {
    private var _isLogedIn = false;
    private var _userName: String? = nil;
    private var passWord: String? = nil;
    var nickName: String? = nil;
    var LoginType: Int8 = 0; // 1 is login by account and password
    var isLogedIn: Bool {
        get {
            return self._isLogedIn;
        }
    }
    var userName: String? {
        get {
            return self._userName;
        }
    }
    init() {
        _isLogedIn = false
        LoginType = 0;
    }
    
    func login(userName: String, passWord: String) -> Bool {
        let back = self.perFormPassAccountLogin( userName: userName, passWord: passWord);
        if (back.code == 0) {
            _isLogedIn = true;
            self._userName = back.userName;
            self.nickName = back.nickName;
            self.LoginType = 1;
            return true;
        }
        return false;
    }
    
    func logout() -> Bool {
        self._isLogedIn = false;
        self.passWord = nil;
        return true;
    }
    
    private func perFormPassAccountLogin(userName: String, passWord: String) -> LogInBack {
        // stub function
        return LogInBack(code: 0, userName: userName, nickName: "用户");
    }
    
}
