//
//  CustomTableViewCell.swift
//  AnimalsApp
//
//  Created by Happy Feet on 12/25/17.
//  Copyright © 2017 Happy Feet. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var animalImage: UIImageView!
    
    @IBOutlet weak var animalLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }



}
