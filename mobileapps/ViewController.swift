//
//  ViewController.swift
//  mobileapps
//
//  Created by Matthew Plummer on 10/13/15.
//  Copyright (c) 2015 Matthew Plummer. All rights reserved.
//

import UIKit
import Parse
import Bolts

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let testObject = PFObject(className: "TestObject")
        //testObject["foo"] = "bar"
        testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            print("Object has been saved.")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

