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
        screen?.titleLabel.isAccessibilityElement = true
        screen?.loginButton.isAccessibilityElement = true // a imagem eh obrigatorio passar 
        
        // eh o que o voice over vai falar quando o cursor estiver no elemento
        screen?.positionOneLabel.accessibilityLabel = "Posição um"
        screen?.positionTwoLabel.accessibilityLabel = "Posição dois"
        screen?.positionThreeLabel.accessibilityLabel = "Posição três"
        screen?.positionFourLabel.accessibilityLabel = "Posição quatro"
        screen?.positionFiveLabel.accessibilityLabel = "Posição cinco"
        
        screen?.positionOneLabel.accessibilityTraits = .staticText
        screen?.positionTwoLabel.accessibilityTraits = .staticText
        screen?.positionThreeLabel.accessibilityTraits = .staticText
        screen?.positionFourLabel.accessibilityTraits = .staticText
        screen?.positionFiveLabel.accessibilityTraits = .staticText
        
        screen?.titleLabel.accessibilityTraits = .header
        screen?.loginButton.accessibilityTraits = .button
        screen?.imageView.accessibilityTraits = .image
        
        guard let first = screen?.positionOneLabel,
              let second = screen?.positionOneLabel,
              let third = screen?.positionOneLabel,
              let fourth = screen?.positionOneLabel,
              let fifth = screen?.positionOneLabel,
              let button = screen?.loginButton,
              let title = screen?.titleLabel,
              let image = screen?.imageView else { return }
        
        
        screen?.imageView.accessibilityLabel = "image de uma lixeira"
        
        
        // configura a ordem do que sera lido na tela.
        view.accessibilityElements = [title,first,second,third,fourth,fifth,button,image]
        
        
    }

}

extension ViewController: ViewControllerScreenProtocol {
    func tappedLoginButton() {
        UIAccessibility.post(notification: .announcement, argument: screen?.positionOneLabel ?? "Teste o botao, foi pressionado!")
    }

}


