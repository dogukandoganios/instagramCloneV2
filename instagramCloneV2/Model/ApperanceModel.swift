//
//  ApperanceModel.swift
//  instagramCloneV2
//
//  Created by Doğukan Doğan on 3.08.2022.
//

import Foundation
import UIKit

func textFieldClass(placeholderText : String, viewWidth : CGFloat, viewHeight : CGFloat, frameX : CGFloat, frameY : CGFloat, width : CGFloat, height : CGFloat) -> UITextField{
    
    let textField = UITextField()
    textField.attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray.withAlphaComponent(0.5)])
    textField.layer.borderWidth = 1
    textField.layer.borderColor = UIColor.black.cgColor
    textField.frame = CGRect(x: viewWidth * frameX - viewWidth * width / 2, y: viewHeight * frameY - viewHeight * height / 2, width: viewWidth * width, height: viewHeight * height)
    
    let padding = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
    textField.leftView = padding
    textField.leftViewMode = .always
    return textField
    
}

func buttonClass(titleString : String, titleColor : UIColor, borderWidth : CGFloat, cornerRadius : CGFloat, borderColor : UIColor,backgroundColor : UIColor, viewWidth : CGFloat, viewHeight : CGFloat, frameX : CGFloat, frameY : CGFloat, width : CGFloat, height : CGFloat) -> UIButton{
    
    let button = UIButton()
    button.setTitle(titleString, for: UIControl.State.normal)
    button.setTitleColor(titleColor, for: UIControl.State.normal)
    button.layer.borderWidth = borderWidth
    button.layer.borderColor = borderColor.cgColor
    button.layer.backgroundColor = backgroundColor.cgColor
    button.layer.cornerRadius = cornerRadius
    button.frame = CGRect(x: viewWidth * frameX - viewWidth * width / 2, y: viewHeight * frameY - viewHeight * height / 2, width: viewWidth * width, height: viewHeight * height)
    
    return button
}

func imageViewClass(imageName : String, viewWidth : CGFloat, viewHeight : CGFloat, frameX : CGFloat, frameY : CGFloat, width : CGFloat, height : CGFloat) -> UIImageView{
    
    let imageView = UIImageView()
    imageView.image = UIImage(named: imageName)
    imageView.frame = CGRect(x: viewWidth * frameX - viewWidth * width / 2, y: viewHeight * frameY - viewHeight * height / 2, width: viewWidth * width, height: viewHeight * height)
    
    return imageView
}

func labelClass(textText : String, viewWidth : CGFloat, viewHeight : CGFloat, frameX : CGFloat, frameY : CGFloat, width : CGFloat, height : CGFloat) -> UILabel{
    
    let text = UILabel()
    text.text = textText
    text.frame = CGRect(x: viewWidth * frameX - viewWidth * width / 2, y: viewHeight * frameY - viewHeight * height / 2, width: viewWidth * width, height: viewHeight * height)
    
    return text
}
