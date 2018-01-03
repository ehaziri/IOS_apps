//
//  AddController.swift
//  ToDoListApp
//
//  Created by Xona on 12/29/17.
//  Copyright © 2017 HappyFeet. All rights reserved.
//

import UIKit

class AddController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func addPressed(_ sender: UIButton) {
        if (textField.text != nil) && textField.text != ""{
            todoList?.append(textField.text!)
            textField.text = ""
            textField.placeholder = "Add more?"
        }
    }
  

 

}
