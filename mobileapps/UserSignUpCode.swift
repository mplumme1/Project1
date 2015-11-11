//
//  UserSignUpCode.swift
//  mobileapps
//
//  Created by Kara Vitale on 11/10/15.
//  Copyright © 2015 Matthew Plummer. All rights reserved.
//

import Foundation
import Bolts
import Parse

/*https://www.parse.com/docs/ios/guide#users-setting-the-current-user */

// This is some sample code I found .. I don't know how you want to use this 
// I also added the parse stuff so that should be working


// Sign Up
func myMethod() {
    var user = PFUser()
    user.username = "myUsername"
    user.password = "myPassword"
    user.email = "email@example.com"
    // other fields can be set just like with PFObject
    user["phone"] = "415-392-0202"
    
    user.signUpInBackgroundWithBlock {
        (succeeded: Bool, error: NSError?) -> Void in
        if let error = error {
            let errorString = error.userInfo["error"] as NSString
            // Show the errorString somewhere and let the user try again.
        } else {
            // Hooray! Let them use the app now.
        }
    }
}

//Loggin in 
PFUser.logInWithUsernameInBackground("myname", password:"mypass") {
    (user: PFUser?, error: NSError?) -> Void in
    if user != nil {
        // Do stuff after successful login.
    } else {
        // The login failed. Check error to see why.
    }
}

//Current User
var currentUser = PFUser.currentUser()
if currentUser != nil {
    // Do stuff with the user
} else {
    // Show the signup or login screen
}