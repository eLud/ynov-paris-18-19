//
//  ViewController.swift
//  DishOrder
//
//  Created by Ludovic Ollagnier on 12/11/2018.
//  Copyright © 2018 Ynov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dishTypeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var dishNameTextField: UITextField!
    @IBOutlet weak var dishPriceTextField: UITextField!
    @IBOutlet weak var dishDescriptionTextView: UITextView!

    var resto = Restaurant(name: "Mon resto", address: "Aucune idée")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func takePhoto(_ sender: Any) {
        //to do in v2

        print(resto.allDishes)
    }

    @IBAction func validate(_ sender: Any) {

        let selectedSegmentIndex = dishTypeSegmentedControl.selectedSegmentIndex
        guard let type = dishTypeSegmentedControl.titleForSegment(at: selectedSegmentIndex) else { return }

        guard let name = dishNameTextField.text, name.count > 2 else { return }
        guard let price = dishPriceTextField.text, let floatPrice = Float(price) else { return }
        guard let desc = dishDescriptionTextView.text, desc.count > 2 else { return }

        let dish = Dish(type: type, name: name, price: floatPrice, description: desc, imageURL: "")
        resto.addToMenu(dish)
    }
}

