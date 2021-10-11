//
//  ViewController.swift
//  TodoAppLesson01
//
//  Created by UrataHiroki on 2021/10/07.
//

import UIKit

class FirstActionViewController: UIViewController {
    
    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textfield.leftViewMode = .always
        textfield.rightViewMode = .always
        textfield.rightView = UISwitch()
        textfield.leftView = {() -> UIImageView in
            
            let imageView = UIImageView(frame: CGRect(x: textfield.frame.minX + 10, y: textfield.frame.minY, width: textfield.frame.height - 10, height: textfield.frame.height))
            imageView.image = UIImage(systemName: "lock.fill")
            imageView.tintColor = .systemRed
            
            return imageView
        }()
        
        let textfield01 = UITextField()
        textfield01.frame = CGRect(x: view.frame.maxX / 10, y: view.frame.maxY / 6, width: view.frame.width - (view.frame.maxX / 5), height: 50)
        textfield01.placeholder = "UITextField01"
        textfield01.layer.cornerRadius = 10.0
        textfield01.layer.borderWidth = 1.0
        textfield01.leftView = {() -> UIImageView in
            
            let imageView = UIImageView(frame: CGRect(x: textfield01.frame.minX, y: textfield01.frame.minY, width: textfield01.frame.height, height: textfield01.frame.height))
            imageView.image = UIImage(systemName: "lock.fill")
            imageView.tintColor = .systemRed
            
            return imageView
        }()
        
        textfield01.rightViewMode = .always
        textfield01.rightView = UISwitch()
        textfield01.leftViewMode = .always
        textfield01.layer.borderColor = UIColor.black.cgColor
        textfield01.backgroundColor = .white
        view.addSubview(textfield01)
        
    }
    
    
}

