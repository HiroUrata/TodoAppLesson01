//
//  UIPartsGroup.swift
//  TodoAppLesson01
//
//  Created by UrataHiroki on 2021/10/07.
//

import UIKit

class UIPartsGroup{
    
    var accountNameTextField:UITextField?
    var passWordTextField:UITextField?
 
}

//FirstActionViewController用
extension UIPartsGroup{
    
    func showTextField(targetView:UIView){
        
        accountNameTextField = UITextField(frame: CGRect(x: targetView.frame.maxX / 10, y: targetView.frame.maxY / 4, width: targetView.frame.width - (targetView.frame.maxX / 5), height: 34))
        accountNameTextField!.placeholder = "アカウント名 3文字以上"
        accountNameTextField?.layer.cornerRadius = 10.0
        accountNameTextField?.layer.borderWidth = 1.0
        accountNameTextField?.layer.borderColor = UIColor.black.cgColor
        targetView.addSubview(accountNameTextField!)
        
        passWordTextField = UITextField(frame: CGRect(x: targetView.frame.maxX / 10, y: targetView.frame.maxY / 3, width: targetView.frame.width - (targetView.frame.maxX / 5), height: 34))
        //passWordTextField!.placeholder = "パスワード設定　６文字以上"
        targetView.addSubview(passWordTextField!)
        
    }

    
}
