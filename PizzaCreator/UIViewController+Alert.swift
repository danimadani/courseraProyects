//
//  UIViewController+Alert.swift
//  PizzaCreator
//
//  Created by Dani Mangtani Madani on 24/8/16.
//  Copyright © 2016 Dani Mangtani Madani. All rights reserved.
//

import UIKit
extension UIViewController {
    func showAlert(title: String, description: String, buttonTitle: String, completion: (() -> ())?){
        let alert = UIAlertController(title: title, message: description, preferredStyle: .Alert)
        let botonOk = UIAlertAction(title: buttonTitle, style: .Default) { (_) in
            completion?()
        }
        alert.addAction(botonOk)
        self.presentViewController(alert, animated: true, completion: nil)
    }
}
