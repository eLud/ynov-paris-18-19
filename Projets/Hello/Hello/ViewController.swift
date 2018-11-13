//
//  ViewController.swift
//  Hello
//
//  Created by Ludovic Ollagnier on 05/11/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sayHello(_ sender: UIButton) {

        print("Hello")
        print(nameTextField.text?.uppercased())
        helloLabel.text = "Hello, " + nameTextField.text! + "!" + "🛫"
    }

}

