//
//  AlertModel.swift
//  instagramCloneV2
//
//  Created by Doğukan Doğan on 4.08.2022.
//

import Foundation
import UIKit

func alert(title : String, message : String, buttonTitle : String, controllerStyle : UIAlertController.Style, actionStyle : UIAlertAction.Style) -> UIAlertController{
    
    let alert = UIAlertController(title: title, message: message, preferredStyle: controllerStyle)
    let okButton = UIAlertAction(title: buttonTitle, style: actionStyle, handler: nil)
    alert.addAction(okButton)
    
    return alert
    
}
