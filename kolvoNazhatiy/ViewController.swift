//
//  ViewController.swift
//  kolvoNazhatiy
//
//  Created by Samvel on 13.06.18.
//  Copyright © 2018 Samvel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let label = UILabel()
    let button = UIButton()
    var kolvo = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.frame = CGRect(x: 0, y: 0, width: 250, height: 100)
        label.center = view.center
        label.backgroundColor = .red
        label.text = "Вы не нажимали кнопку"
        label.textColor = .white
        label.numberOfLines = 0
        view.addSubview(label)
        
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        button.center = view.center
        button.center.y = view.center.y + 200
        button.addTarget(self, action: #selector(buttonTapped), for: UIControlEvents.touchUpInside)
        button.backgroundColor = .yellow
        button.setTitle("Нажимай", for: .normal)
        view.addSubview(button)
    }
    
    @objc
    func buttonTapped() {
        kolvo += 1
        if kolvo <= 10 {
            label.text = "Вы нажали кнопку \(kolvo) раз"
        }
        else {
            label.text = "Вы выиграли. \n Нажмите чтоб начать заново."
            kolvo = 0
        }
        return
    }
}


