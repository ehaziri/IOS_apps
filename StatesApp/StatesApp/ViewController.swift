//
//  ViewController.swift
//  StatesApp
//
//  Created by Xona on 12/27/17.
//  Copyright © 2017 HappyFeet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var countries = [Country]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let albania = Country(name: "albania", capital: "tirana")
        countries.append(albania)
        let australia = Country(name: "australia", capital: "canberra")
        countries.append(australia)
        let canada = Country(name: "canada", capital: "ottawa")
        countries.append(canada)
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell")
        cell?.textLabel?.text = countries[indexPath.row].name.capitalized
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? CountryViewController{
            destination.country = countries[(tableView.indexPathForSelectedRow?.row)!]
            
        }
    }

}

