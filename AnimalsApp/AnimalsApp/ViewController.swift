//
//  ViewController.swift
//  AnimalsApp
//
//  Created by Happy Feet on 12/25/17.
//  Copyright © 2017 Happy Feet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    let elements = ["cat", "horse", "dog", "cat", "horse", "dog", "cat", "horse", "dog"]
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as!CustomTableViewCell
        
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        cell.animalLbl.text = elements[indexPath.row]
        cell.animalImage.image = UIImage(named: elements[indexPath.row])
        
        cell.animalImage.layer.cornerRadius = cell.animalImage.frame.height / 2
        
        return cell
    }
    

}

