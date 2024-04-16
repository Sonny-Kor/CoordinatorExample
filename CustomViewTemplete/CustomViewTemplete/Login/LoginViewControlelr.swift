//
//  LoginViewControlelr.swift
//  CustomViewTemplete
//
//  Created by 승재 on 4/16/24.
//

import UIKit

protocol LoginViewControllerDelegate {
    func login()
}

class LoginViewController: UIViewController {

    var delegate: LoginViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let item = UIBarButtonItem(title: "로그인", style: .plain, target: self, action: #selector(self.loginButtonDidTap))
        self.navigationItem.rightBarButtonItem = item
    }
    
    deinit {
        print("- \(type(of: self)) deinit")
    }
    
    @objc
    func loginButtonDidTap() {
        print("Clicked")
        self.delegate?.login()
    }
}
