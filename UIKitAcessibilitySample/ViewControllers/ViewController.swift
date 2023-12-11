//
//  ViewController.swift
//  UIKitAcessibilitySample
//
//  Created by Yuri Cunha on 10/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    var screen: ViewControllerScreen?
    
    override func loadView() {
        screen = ViewControllerScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }


}

extension ViewController: ViewControllerScreenProtocol {
    func tappedLoginButton() {
        print(#function)
    }

}


