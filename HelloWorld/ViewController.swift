//
//  ViewController.swift
//  HelloWorld
//
//  Created by Jules Labador on 2/13/19.
//  Copyright © 2019 Jules Labador. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        
    }
    
    let helloLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello"
        label.textColor = UIColor.blue
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Avenir-Heavy", size: 25)
        
        return label
    }()
    
    let aLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello"
        label.textColor = UIColor.blue
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Avenir-Heavy", size: 25)
        return label
    }()
    
    let buttonOne: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("hello", for: .normal)
        button.backgroundColor = UIColor.red
        
        return button
    }()
    
    func setupViews() {
        
        view.backgroundColor = UIColor.white
        
        view.addSubview(helloLabel)
        helloLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 0).isActive = true
        helloLabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 0).isActive = true
        
        view.addSubview(aLabel)
        aLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 0).isActive = true
        aLabel.bottomAnchor.constraint(equalTo: helloLabel.topAnchor, constant: -30).isActive = true
        
        view.addSubview(buttonOne)
        buttonOne.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 0).isActive = true
        buttonOne.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -19).isActive = true
        buttonOne.widthAnchor.constraint(equalToConstant: 200
            ).isActive = true
    }
}

