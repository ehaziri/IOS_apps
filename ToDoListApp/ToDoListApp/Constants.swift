//
//  Constants.swift
//  ToDoListApp
//
//  Created by Xona on 12/29/17.
//  Copyright © 2017 HappyFeet. All rights reserved.
//

import Foundation

var todoList:[String]?

func saveData(todoList:[String]){
    UserDefaults.standard.set(todoList, forKey: "todoList")
}

func fetchData() -> [String]?{
    if let todo = UserDefaults.standard.array(forKey: "todoList") as? [String]{
        return todo
    }
    else{
        return nil
    }
}
