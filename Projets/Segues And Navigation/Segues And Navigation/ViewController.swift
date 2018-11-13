//
//  ViewController.swift
//  Segues And Navigation
//
//  Created by Ludovic Ollagnier on 13/11/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isLogged = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showSecondScreen(_ sender: Any) {
        if isLogged {
            performSegue(withIdentifier: "showSecondScreen", sender: nil)
        } else {

        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "showSecondScreen" {
            segue.destination.title = "Hello"
//            segue.destination.dishToDisplay = selectedDish
        } else {
            
        }
    }

}

