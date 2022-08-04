//
//  PasswordVC.swift
//  instagramCloneV2
//
//  Created by Doğukan Doğan on 4.08.2022.
//

import UIKit

class PasswordVC: UIViewController {

    var width = CGFloat()
    var height = CGFloat()
    var topLabel = UILabel()
    var descriptionTextView = UITextView()
    var passwordTextField = UITextField()
    var checkButton = UIButton()
    var saveLabel = UILabel()
    var nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        overrideUserInterfaceStyle = .light
        width = view.frame.size.width
        height = view.frame.size.height
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        bodyApperance()
    }
    
    @objc func dismissKeyboard(){
        
        view.endEditing(true)
        
    }
    
    func bodyApperance(){
        
        topLabel = labelClass(textText: "Şifre Oluştur", borderWidth: 0, fontSize: 0.06, textAlgiment: .center, viewWidth: width, viewHeight: height, frameX: 0.5, frameY: 0.12, width: 0.53, height: 0.05)
        view.addSubview(topLabel)
        
        descriptionTextView = textViewClass(text: "Şifreni hatırlayabiliceğimiz için iCloud® cihazlarında girmen gerekmeyecek.", borderWidth: 0, fontSize: 0.035, userInteraction: false, textAligment: .center, viewWidth: width, viewHeight: height, frameX: 0.5, frameY: 0.18, width: 0.7, height: 0.06)
        view.addSubview(descriptionTextView)
        
        passwordTextField = textFieldClass(placeholderText: "Şifre", borderWidth: 1, cornerRadius: height * 0.05 / 5, viewWidth: width, viewHeight: height, frameX: 0.5, frameY: 0.24, width: 0.7, height: 0.05)
        view.addSubview(passwordTextField)
        
        checkButton = buttonClass(titleString: "", titleColor: .white, borderWidth: 2, cornerRadius: 0, fontSize: 0, borderColor: .black, backgroundColor: .white, viewWidth: width, viewHeight: height, frameX: 0.18, frameY: 0.29, width: 0.04, height: 0.02)
        view.addSubview(checkButton)
        
        saveLabel = labelClass(textText: "Şifreyi Kaydet", borderWidth: 0, fontSize: 0.035, textAlgiment: .left, viewWidth: width, viewHeight: height, frameX: 0.33, frameY: 0.29, width: 0.24, height: 0.03)
        view.addSubview(saveLabel)
        
        nextButton = buttonClass(titleString: "İleri", titleColor: .white, borderWidth: 1, cornerRadius: height * 0.05 / 5, fontSize: 0.04, borderColor: .blue, backgroundColor: .blue, viewWidth: width, viewHeight: height, frameX: 0.5, frameY: 0.35, width: 0.7, height: 0.05)
        nextButton.addTarget(self, action: #selector(nextClick), for: UIControl.Event.touchUpInside)
        view.addSubview(nextButton)
        
    }
    
    @objc func nextClick(){
        
        performSegue(withIdentifier: "toEmailOrPhoneVC", sender: nil)
    }
}
