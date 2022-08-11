//
//  ApperanceModel.swift
//  instagramCloneV2
//
//  Created by Doğukan Doğan on 3.08.2022.
//

import Foundation
import UIKit

func textFieldClass(placeholderText : String, isSecureTextEntry : Bool, borderWidth : CGFloat, cornerRadius : CGFloat, viewWidth : CGFloat, viewHeight : CGFloat, frameX : CGFloat, frameY : CGFloat, width : CGFloat, height : CGFloat) -> UITextField{
    
    let textField = UITextField()
    textField.attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray.withAlphaComponent(0.5)])
    textField.layer.borderWidth = borderWidth
    textField.layer.cornerRadius = cornerRadius
    textField.layer.borderColor = UIColor.black.cgColor
    textField.isSecureTextEntry = isSecureTextEntry
    textField.frame = CGRect(x: viewWidth * frameX - viewWidth * width / 2, y: viewHeight * frameY - viewHeight * height / 2, width: viewWidth * width, height: viewHeight * height)
    
    let padding = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
    textField.leftView = padding
    textField.leftViewMode = .always
    return textField
    
}

func buttonClass(titleString : String, titleColor : UIColor, imageName : String, borderWidth : CGFloat, cornerRadius : CGFloat, fontSize : CGFloat, borderColor : UIColor,backgroundColor : UIColor, viewWidth : CGFloat, viewHeight : CGFloat, frameX : CGFloat, frameY : CGFloat, width : CGFloat, height : CGFloat) -> UIButton{
    
    let button = UIButton()
    button.setTitle(titleString, for: UIControl.State.normal)
    button.setTitleColor(titleColor, for: UIControl.State.normal)
    button.setImage(UIImage(named: "\(imageName)"), for: UIControl.State.normal)
    button.titleLabel!.font = UIFont(name: button.titleLabel!.font.fontName, size: viewWidth * fontSize)
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

func labelClass(textText : String, borderWidth : CGFloat, fontSize : CGFloat, textAlgiment : NSTextAlignment, viewWidth : CGFloat, viewHeight : CGFloat, frameX : CGFloat, frameY : CGFloat, width : CGFloat, height : CGFloat) -> UILabel{
    
    let text = UILabel()
    text.text = textText
    text.frame = CGRect(x: viewWidth * frameX - viewWidth * width / 2, y: viewHeight * frameY - viewHeight * height / 2, width: viewWidth * width, height: viewHeight * height)
    text.layer.borderWidth = borderWidth
    text.font = UIFont(name: text.font.fontName, size: viewWidth * fontSize)
    text.textAlignment = textAlgiment
    
    return text
}

func textViewClass(text : String, borderWidth : CGFloat, fontSize : CGFloat, userInteraction : Bool, textAligment : NSTextAlignment, viewWidth : CGFloat, viewHeight : CGFloat, frameX : CGFloat, frameY : CGFloat, width : CGFloat, height : CGFloat) -> UITextView{
    
    let textView = UITextView()
    textView.text = text
    textView.layer.borderWidth = borderWidth
    textView.font = UIFont(name: textView.font!.fontName, size: viewWidth * fontSize)
    textView.frame = CGRect(x: viewWidth * frameX - viewWidth * width / 2, y: viewHeight * frameY - viewHeight * height / 2, width: viewWidth * width, height: viewHeight * height)
    textView.isUserInteractionEnabled = userInteraction
    textView.textAlignment = textAligment
    
    return textView
}

func segmentedClass(itemArry : [String], selectSegment : Int, viewWidth : CGFloat, viewHeight : CGFloat, frameX : CGFloat, frameY : CGFloat, width : CGFloat, height : CGFloat) -> UISegmentedControl{
    
    let segment = UISegmentedControl(items: itemArry)
    segment.frame = CGRect(x: viewWidth * frameX - viewWidth * width / 2, y: viewHeight * frameY - viewHeight * height / 2, width: viewWidth * width, height: viewHeight * height)
    segment.selectedSegmentIndex = selectSegment
    
    
    return segment
}
