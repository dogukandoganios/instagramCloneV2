//
//  ViewController.swift
//  instagramCloneV2
//
//  Created by Doğukan Doğan on 3.08.2022.
//

import UIKit

class SingInVC: UIViewController {
    
    var logoImageView = UIImageView()
    var userTextField = UITextField()
    var passwordTextField = UITextField()
    var passwordForgotButton = UIButton()
    var logInButton = UIButton()
    var yadaImageView = UIImageView()
    var facebookImage = UIImageView()
    var facebookLogInButton = UIButton()
    var textLabel = UILabel()
    var singUpButton = UIButton()
    var width = CGFloat()
    var height = CGFloat()
    
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
        
        logoImageView = imageViewClass(imageName: "instagramText", viewWidth: width, viewHeight: height, frameX: 0.5, frameY: 0.25, width: 0.6, height: 0.1)
        view.addSubview(logoImageView)
        
        userTextField = textFieldClass(placeholderText: "Telefon numarası, kullanıcı adı veya eposta", borderWidth: 1, cornerRadius: height * 0.05 / 5, viewWidth: width, viewHeight: height, frameX: 0.5, frameY: 0.35, width: 0.9, height: 0.05)
        view.addSubview(userTextField)
        
        passwordTextField = textFieldClass(placeholderText: "Şifre", borderWidth: 1, cornerRadius: height * 0.05 / 5, viewWidth: width, viewHeight: height, frameX: 0.5, frameY: 0.41, width: 0.9, height: 0.05)
        view.addSubview(passwordTextField)
        
        passwordForgotButton = buttonClass(titleString: "Şifreni mi Unuttun?", titleColor: UIColor.blue, borderWidth: 0, cornerRadius: 0, fontSize: 0.042, borderColor: UIColor.black, backgroundColor: UIColor.white, viewWidth: width, viewHeight: height, frameX: 0.75, frameY: 0.47, width: 0.4, height: 0.03)
        passwordTextField.addTarget(self, action: #selector(forgotButtonClick), for: UIControl.Event.touchUpInside)
        view.addSubview(passwordForgotButton)
        
        logInButton = buttonClass(titleString: "Giriş Yap", titleColor: UIColor.white, borderWidth: 1, cornerRadius: height * 0.05 / 5, fontSize: 0.05, borderColor: UIColor.blue, backgroundColor: UIColor.blue, viewWidth: width, viewHeight: height, frameX: 0.5, frameY: 0.53, width: 0.9, height: 0.05)
        logInButton.addTarget(self, action: #selector(singInClick), for: UIControl.Event.touchUpInside)
        view.addSubview(logInButton)
        
        yadaImageView = imageViewClass(imageName: "test", viewWidth: width, viewHeight: height, frameX: 0.5, frameY: 0.6, width: 0.9, height: 0.055)
        view.addSubview(yadaImageView)
        
        facebookImage = imageViewClass(imageName: "facebook.png", viewWidth: width, viewHeight: height, frameX: 0.3, frameY: 0.68, width: 0.05, height: 0.025)
        view.addSubview(facebookImage)
        
        facebookLogInButton = buttonClass(titleString: "Facebook ile Giriş Yap", titleColor: UIColor.blue, borderWidth: 0, cornerRadius: 0, fontSize: 0.045, borderColor: UIColor.black, backgroundColor: UIColor.white, viewWidth: width, viewHeight: height, frameX: 0.55, frameY: 0.68, width: 0.43, height: 0.05)
        facebookLogInButton.addTarget(self, action: #selector(facebookClick), for: UIControl.Event.touchUpInside)
        view.addSubview(facebookLogInButton)
        
        textLabel = labelClass(textText: "Hesabın yok mu?", borderWidth: 0, fontSize: 0.045, textAlgiment: .left, viewWidth: width, viewHeight: height, frameX: 0.4, frameY: 0.95, width: 0.32, height: 0.05)
        view.addSubview(textLabel)
        
        singUpButton = buttonClass(titleString: "Kaydol.", titleColor: UIColor.blue, borderWidth: 0, cornerRadius: 0, fontSize: 0.044, borderColor: .black, backgroundColor: .white, viewWidth: width, viewHeight: height, frameX: 0.64, frameY: 0.95, width: 0.15, height: 0.05)
        singUpButton.addTarget(self, action: #selector(singUpClick), for: UIControl.Event.touchUpInside)
        view.addSubview(singUpButton)
        
    }

    @objc func forgotButtonClick(){
        
    }
    
    @objc func singInClick(){
        
    }
    
    @objc func facebookClick(){
        
    }
    
    @objc func singUpClick(){
        
        performSegue(withIdentifier: "toSingUpVC", sender: nil)
        
    }

}

