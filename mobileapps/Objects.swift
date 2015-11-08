//
//  User.swift
//  mobileapps
//
//  Created by Matthew Plummer on 10/13/15.
//  Copyright (c) 2015 Matthew Plummer. All rights reserved.
//

import Foundation
import UIKit

class User: NSObject {
    var name: String
    var password: String
    
    init(name: String, password: String) {
        self.name = name
        self.password = password
        super.init()
    }
}

class Trainer: User {
    var level: String
    
    init(name: String, password: String, level: String, age: String) {
        self.level = level
        super.init(name: name, password: password);
    }
}

class Connection: NSObject {
    var userName: String
    var trainerName: String
    var exerciseName: String
    var exerciseID: Int
    var completed: Bool
    
    init(userName: String, trainerName: String, exerciseName: String, exerciseID: Int) {
        self.completed = false
        self.userName = userName
        self.trainerName = trainerName
        self.exerciseName = exerciseName
        self.exerciseID = exerciseID
        super.init()
    }
}

class ExerciseList: NSObject {
    
}