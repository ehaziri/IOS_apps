//
//  Country.swift
//  StatesApp
//
//  Created by Xona on 12/27/17.
//  Copyright © 2017 HappyFeet. All rights reserved.
//

import UIKit

class Country{
    
    var name: String
    var capital: String
    var image: UIImage
    
    init(name: String, capital: String){
        self.name = name
        self.capital = capital
        
        image = UIImage(named: self.name)!
    }
}
