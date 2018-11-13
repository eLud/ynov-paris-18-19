//
//  ViewController.swift
//  Light
//
//  Created by Ludovic Ollagnier on 05/11/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isLightOn = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func toggleLight(_ sender: UIButton) {

        if isLightOn {
            view.backgroundColor = .black
//            sender.setTitle("Allumer", for: .normal)
            isLightOn = false
        } else {
            view.backgroundColor = .white
//            sender.setTitle("Éteindre", for: .normal)
            isLightOn = true
        }

    }

}

