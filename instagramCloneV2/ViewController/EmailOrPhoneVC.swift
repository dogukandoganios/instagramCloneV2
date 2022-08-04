//
//  EmailOrPhoneVC.swift
//  instagramCloneV2
//
//  Created by Doğukan Doğan on 4.08.2022.
//

import UIKit

class EmailOrPhoneVC: UIViewController {

    var width = CGFloat()
    var height = CGFloat()
    var topLabel = UILabel()
    var phoneoremailSegment = UISegmentedControl()
    var phoheoremailTextField = UITextField()
    var nextButton = UIButton()
    var descriptionTextView = UITextView()
    
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
        
        phoheoremailTextField = textFieldClass(placeholderText: "Telefon Numarası", borderWidth: 1, cornerRadius: height * 0.05 / 5, viewWidth: width, viewHeight: height, frameX: 0.53, frameY: 0.25, width: 0.7, height: 0.05)
        view.addSubview(phoheoremailTextField)
        
        nextButton = buttonClass(titleString: "İleri", titleColor: .white, borderWidth: 1, cornerRadius: height * 0.05 / 5, fontSize: 0.04, borderColor: .blue, backgroundColor: .blue, viewWidth: width, viewHeight: height, frameX: 0.53, frameY: 0.32, width: 0.7, height: 0.05)
        view.addSubview(nextButton)
        
        descriptionTextView = textViewClass(text: "Güvenlik ve giriş amaçlarıyla bizden SMS bildirimleri alabilirsin.", borderWidth: 0, fontSize: 0.035, userInteraction: false, textAligment: .center, viewWidth: width, viewHeight: height, frameX: 0.53, frameY: 0.39, width: 0.6, height: 0.06)
        view.addSubview(descriptionTextView)
        
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
