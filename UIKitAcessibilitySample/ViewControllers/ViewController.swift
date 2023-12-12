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
        configAcessibility()
    }

    func configAcessibility() {
        //ativa a leitura por meios de acessibilidade como o voiceover
        screen?.positionOneLabel.isAccessibilityElement = true
        screen?.positionTwoLabel.isAccessibilityElement = true
        screen?.positionThreeLabel.isAccessibilityElement = true
        screen?.positionFourLabel.isAccessibilityElement = true
        screen?.positionFiveLabel.isAccessibilityElement = true
        
        // eh o que o voice over vai falar quando o cursor estiver no elemento
        screen?.positionOneLabel.accessibilityLabel = "Posição um"
        screen?.positionTwoLabel.accessibilityLabel = "Posição dois"
        screen?.positionThreeLabel.accessibilityLabel = "Posição três"
        screen?.positionFourLabel.accessibilityLabel = "Posição quatro"
        screen?.positionFiveLabel.accessibilityLabel = "Posição cinco"
        
        screen?.positionOneLabel.accessibilityTraits 
        
        
        guard let first = screen?.positionOneLabel,
              let second = screen?.positionOneLabel,
              let third = screen?.positionOneLabel,
              let fourth = screen?.positionOneLabel,
              let fifth = screen?.positionOneLabel,
              let button = screen?.loginButton,
              let title = screen?.titleLabel  else { return }
        
        // configura a ordem do que sera lido na tela.
        view.accessibilityElements = [title,first,second,third,fourth,fifth,button]
        
        
    }

}

extension ViewController: ViewControllerScreenProtocol {
    func tappedLoginButton() {
        
    }

}


