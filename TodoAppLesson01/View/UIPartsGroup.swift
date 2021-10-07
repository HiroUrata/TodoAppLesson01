//
//  UIPartsGroup.swift
//  TodoAppLesson01
//
//  Created by UrataHiroki on 2021/10/07.
//

import UIKit

class UIPartsGroup{
    
    var accountNameTextField = UITextField()
    var passWordTextField = UITextField()
 
}

//FirstActionViewController用
extension UIPartsGroup{
    
    func showFirstActionParts(targetView:UIView){
        
        let firstActionTitleLabel = UILabel()
        firstActionTitleLabel.frame.size = CGSize(width: targetView.frame.width / 2.5, height: targetView.frame.height / 10)
        firstActionTitleLabel.frame.origin = CGPoint(x: targetView.frame.midX - (firstActionTitleLabel.frame.width / 2), y: targetView.frame.maxY / 9)
        firstActionTitleLabel.textAlignment = .center
        firstActionTitleLabel.font = UIFont.boldSystemFont(ofSize: 23)
        firstActionTitleLabel.text = "ユーザー確認"
        targetView.addSubview(firstActionTitleLabel)
        
        accountNameTextField.frame = CGRect(x: targetView.frame.maxX / 10, y: targetView.frame.maxY / 4, width: targetView.frame.width - (targetView.frame.maxX / 5), height: 50)
        accountNameTextField.placeholder = "アカウント名 3文字以上"
        accountNameTextField.layer.cornerRadius = 10.0
        accountNameTextField.layer.borderWidth = 8.0
        accountNameTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        accountNameTextField.leftViewMode = .always
        accountNameTextField.layer.borderColor = UIColor.black.cgColor
        accountNameTextField.backgroundColor = .white
        accountNameTextField.tag = 0
        targetView.addSubview(accountNameTextField)
        
        passWordTextField.frame = CGRect(x: targetView.frame.maxX / 10, y: targetView.frame.maxY / 2.7, width: targetView.frame.width - (targetView.frame.maxX / 5), height: 50)
        passWordTextField.placeholder = "パスワード設定　６文字以上"
        passWordTextField.layer.cornerRadius = 10.0
        passWordTextField.layer.borderWidth = 8.0
        passWordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        passWordTextField.leftViewMode = .always
        passWordTextField.layer.borderColor = UIColor.black.cgColor
        passWordTextField.backgroundColor = .white
        passWordTextField.tag = 1
        targetView.addSubview(passWordTextField)
        
        let signUpOrLoginButton = UIButton()
        signUpOrLoginButton.frame.size = CGSize(width: targetView.frame.width / 1.5, height: targetView.frame.height / 14)
        signUpOrLoginButton.frame.origin = CGPoint(x: targetView.frame.midX - (signUpOrLoginButton.frame.width / 2), y: targetView.frame.maxY / 1.8)
        signUpOrLoginButton.layer.cornerRadius = 20.0
        signUpOrLoginButton.backgroundColor = .systemGreen
        signUpOrLoginButton.setTitle("signUpOrLogin", for: .normal)
        targetView.addSubview(signUpOrLoginButton)
        
    }

    
}
