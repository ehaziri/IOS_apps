//
//  CountryViewController.swift
//  StatesApp
//
//  Created by Xona on 12/27/17.
//  Copyright © 2017 HappyFeet. All rights reserved.
//

import UIKit

class CountryViewController: UIViewController {

    @IBOutlet weak var countryImg: UIImageView!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var capitalLbl: UILabel!
    
    var country: Country?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countryLbl.text = country?.name.capitalized
        capitalLbl.text = country?.capital.capitalized
        countryImg.image = country?.image

        // Do any additional setup after loading the view.
    }


}
