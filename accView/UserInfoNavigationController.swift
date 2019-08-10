//
//  UserInfoViewController.swift
//  accView
//
//  Created by andy on 09/08/2019.
//  Copyright © 2019 andy. All rights reserved.
//

import UIKit

class UserInfoNavigationController : UINavigationController {
    var alreadyLogVC: UIViewController?;
    var needLogVC: UIViewController?;
    let user = Context.currentUser
    
    required init?(coder aDecoder: NSCoder) {
        alreadyLogVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loggedin_vc")
        needLogVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "login_vc")
        super.init(coder: aDecoder)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        showUserInfoDependOnUserState()
    }
    
    // will only keep one VC in the stack
    private func showUserInfoDependOnUserState() {
        if(!user.isLogedIn) {
            if (needLogVC != nil && self.topViewController != needLogVC ) {
                self.popViewController(animated: false);
                self.show(needLogVC!, sender: self)
            }
        } else {
            if ( alreadyLogVC != nil && self.topViewController != alreadyLogVC ) {
                self.popViewController(animated: false);
                self.show(alreadyLogVC!, sender: self)
            }
        }
    }
    
    
    
}
