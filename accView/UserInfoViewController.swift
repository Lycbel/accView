//
//  UserInfoViewController.swift
//  accView
//
//  Created by andy on 09/08/2019.
//  Copyright © 2019 andy. All rights reserved.
//

import UIKit

class UserInfoViewController: ViewController,  UITextFieldDelegate {
    

    @IBOutlet weak var userNameInput: UITextField?
    
    @IBOutlet weak var passInput: UITextField?
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad();
        if (userNameInput != nil) {
            self.userNameInput!.delegate = self
            self.passInput!.delegate = self
        }
       
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    @IBAction func loginPress(_ sender: UIButton) {
        let name = userNameInput?.text;
        let pass = passInput?.text;
        if (name == nil || pass == nil || name!.isEmpty || pass!.isEmpty) {
            let alert = UIAlertController(title: "请输入密码或账号", message: "密码或账号不能为空", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            self.present(alert, animated: true)
        } else {
            Context.currentUser = User();
            let result = Context.currentUser.login(userName: name!, passWord: pass!)
            if (result) {
                ((self.navigationController as! UserInfoNavigationController)).showUserInfoDependOnUserState()
            }
        }
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
}
