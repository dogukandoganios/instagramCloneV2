//
//  EmailOrPhoneVC.swift
//  instagramCloneV2
//
//  Created by Doğukan Doğan on 4.08.2022.
//

import UIKit
import Firebase

class EmailOrPhoneVC: UIViewController {

    var width = CGFloat()
    var height = CGFloat()
    var topLabel = UILabel()
    var phoneoremailSegment = UISegmentedControl()
    var phoheoremailTextField = UITextField()
    var nextButton = UIButton()
    var descriptionTextView = UITextView()
    var username = String()
    var password = String()
    
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
        
        topLabel = labelClass(textText: "Telefon veya E-posta Ekle", borderWidth: 0, fontSize: 0.06, textAlgiment: .left, viewWidth: width, viewHeight: height, frameX: 0.53, frameY: 0.12, width: 0.7, height: 0.05)
        view.addSubview(topLabel)
        
        let itemArray = ["Telefon", "E-posta"]
        phoneoremailSegment = segmentedClass(itemArry: itemArray, selectSegment: 0, viewWidth: width, viewHeight: height, frameX: 0.53, frameY: 0.18, width: 0.7, height: 0.05)
        phoneoremailSegment.addTarget(self, action: #selector(segmentClick(_:)), for: UIControl.Event.valueChanged)
        view.addSubview(phoneoremailSegment)
        
        phoheoremailTextField = textFieldClass(placeholderText: "Telefon Numarası", isSecureTextEntry: false, borderWidth: 1, cornerRadius: height * 0.05 / 5, viewWidth: width, viewHeight: height, frameX: 0.53, frameY: 0.25, width: 0.7, height: 0.05)
        view.addSubview(phoheoremailTextField)
        
        nextButton = buttonClass(titleString: "İleri", titleColor: .white, imageName: "", borderWidth: 1, cornerRadius: height * 0.05 / 5, fontSize: 0.04, borderColor: .blue, backgroundColor: .blue, viewWidth: width, viewHeight: height, frameX: 0.53, frameY: 0.32, width: 0.7, height: 0.05)
        nextButton.addTarget(self, action: #selector(nextClick), for: UIControl.Event.touchUpInside)
        view.addSubview(nextButton)
        
        descriptionTextView = textViewClass(text: "Güvenlik ve giriş amaçlarıyla bizden SMS bildirimleri alabilirsin.", borderWidth: 0, fontSize: 0.035, userInteraction: false, textAligment: .center, viewWidth: width, viewHeight: height, frameX: 0.53, frameY: 0.39, width: 0.6, height: 0.06)
        view.addSubview(descriptionTextView)
        
    }
    
    @objc func nextClick(){
        
        if phoheoremailTextField.text != nil && username != "" && password != ""{
            
            Auth.auth().createUser(withEmail: phoheoremailTextField.text!, password: password) { result, error in
                
                if error != nil{
                    self.present(alert(title: "Error!", message: error?.localizedDescription ?? "Error!", buttonTitle: "Ok", controllerStyle: .alert, actionStyle: .default), animated: true, completion: nil)
                }else{
                    let fireStore = Firestore.firestore()
                    let userDictionary = ["username" : self.username, "email" : self.phoheoremailTextField.text!, "password" : self.password] as! [String : Any]
                    fireStore.collection("User").addDocument(data: userDictionary) { error in
                        if error != nil{
                            self.present(alert(title: "Error!", message: error?.localizedDescription ?? "Error!", buttonTitle: "Ok", controllerStyle: .alert, actionStyle: .default), animated: true, completion: nil)
                        }
                        print("Succed")
                    }
                }
                
            }
            
        }
        
    }
    
    @objc func segmentClick(_ sender : UISegmentedControl){
        
        if sender.selectedSegmentIndex == 0 {
            
            phoheoremailTextField.placeholder = "Telefon Numarası"
            descriptionTextView.isHidden = false
            
        }else{
            
            phoheoremailTextField.placeholder = "E-Posta Adresi"
            descriptionTextView.isHidden = true
            
        }
    }

}
