//
//  ViewController.swift
//  Structures++
//
//  Created by oliver belanger on 3/1/15.
//  Copyright (c) 2015 HackMad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

      
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 117, green: 46, blue: 124, alpha: 1)
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    
    override func shouldAutorotate() -> Bool {
        return true
        
        
    }
    
    override func supportedInterfaceOrientations() -> Int {
        
        return Int(UIInterfaceOrientationMask.Portrait.rawValue)
        
        
    }

    
    
}
