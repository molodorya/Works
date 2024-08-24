//
//  Extension.swift
//  MyWorks
//
//  Created by Nikita Molodorya on 24.08.2024.
//

import UIKit
import Foundation



// Скрыть клавиатуру при нажатии в любую точку экрана

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
