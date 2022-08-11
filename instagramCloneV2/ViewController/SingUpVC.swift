//
//  SingUpVC.swift
//  instagramCloneV2
//
//  Created by Doğukan Doğan on 4.08.2022.
//

import UIKit

class SingUpVC: UIViewController {

    var topLabel = UILabel()
    var descriptionTextView = UITextView()
    var usernameTextField = UITextField()
    var nextButton = UIButton()
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
        
        topLabel = labelClass(textText: "Kullanıcı Adı Oluştur", borderWidth: 0, fontSize: 0.06, textAlgiment: .left, viewWidth: width, viewHeight: height, frameX: 0.5, frameY: 0.12, width: 0.53, height: 0.05)
        view.addSubview(topLabel)
        
        descriptionTextView = textViewClass(text: "Yeni hesabın için bir kullanıcı adı seç. Daha sonra istediğin zaman değiştirebilirsin.", borderWidth: 0, fontSize: 0.035, userInteraction: false, textAligment: .center, viewWidth: width, viewHeight: height, frameX: 0.5, frameY: 0.17, width: 0.7, height: 0.06)
        view.addSubview(descriptionTextView)
        
        usernameTextField = textFieldClass(placeholderText: "Kullanıcı adı", isSecureTextEntry: false, borderWidth: 1, cornerRadius: height * 0.05 / 5, viewWidth: width, viewHeight: height, frameX: 0.5, frameY: 0.23, width: 0.7, height: 0.05)
        view.addSubview(usernameTextField)
        
        nextButton = buttonClass(titleString: "İleri", titleColor: .white, imageName: "", borderWidth: 1, cornerRadius: height * 0.05 / 5, fontSize: 0.04, borderColor: .blue, backgroundColor: .blue, viewWidth: width, viewHeight: height, frameX: 0.5, frameY: 0.3, width: 0.7, height: 0.05)
        nextButton.addTarget(self, action: #selector(nextClick), for: UIControl.Event.touchUpInside)
        view.addSubview(nextButton)
        
    }
    
    @objc func nextClick(){
        
        if usernameTextField.text != ""{
            performSegue(withIdentifier: "toPasswordVC", sender: nil)
        }else{
            self.present(alert(title: "Error!", message: "User Name not nil!", buttonTitle: "Ok", controllerStyle: .alert, actionStyle: .default), animated: true, completion: nil)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toPasswordVC"{
            
            let destinationVC = segue.destination as! PasswordVC
            destinationVC.userName = usernameTextField.text!
            
        }
        
    }
    
}
