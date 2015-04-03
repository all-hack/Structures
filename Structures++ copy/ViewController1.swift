//
//  ViewController1.swift
//  Structures++
//
//  Created by oliver belanger on 3/1/15.
//  Copyright (c) 2015 HackMad. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var returnedInformation: UILabel!
    @IBOutlet weak var input: UITextField!
    var i = 0
    var a = 0
    var gate = 0
    
    var array = [Int]()
    var arrayA = [Int]()
    var arrayLabels = [String]()
    var arrayContent = [String]()
    
    @IBAction func push(sender: AnyObject) {
        
        if gate >= 6
        {}
        else
        {
        if input.text == ""
        {}
        else
        {
            
        gate++
        var image = UIImage(named: "ob3.png")
        
        var imageView = UIImageView(image: image) //170 , 45

        imageView.frame = CGRect(x: CGFloat(self.view.center.x), y: CGFloat(self.view.center.y), width: 140, height: 35)

        imageView.center = CGPointMake(self.view.center.x + 230, self.view.center.y + 45 - CGFloat( i))

        imageView.tag = i
        
        
        array.append(imageView.tag)
        
        self.view.addSubview(imageView)
        

        var temp = input.text as NSString

        if temp.length > 14
        {
            temp.substringToIndex(11)
            temp = temp + "..."
            
            arrayContent.append(input.text)
            arrayLabels.append(temp)
        }
        else
        {
            arrayContent.append(input.text)
            arrayLabels.append(temp)
            
        }
        
            
        
        
        
        
        
        
        var label = UILabel(frame: CGRectMake(0, 0, 200, 21))
        label.center = CGPointMake( imageView.center.x , imageView.center.y)
        label.textAlignment = NSTextAlignment.Center
        
        
            
//        label.text = input.text
        label.text = arrayLabels.last
            
        label.textColor = UIColor(red: 156, green: 138, blue: 164, alpha: 1)
        
        label.tag = a
        
        arrayA.append(a)
        
        
        
        
        
        
        self.view.addSubview(label)
        i = i + 37
        a = a + 37
        }
        }
        
        input.text = ""
        
    }
    
    @IBAction func pop(sender: AnyObject) {

        if gate == 0
        {}
        else
        {
            
            var labelView = UILabel()
            var imageView = UIImageView()
            var index = array.endIndex - 1
            var display = arrayContent[index]
            
            var del = array[index]
            

            
            for image in self.view.subviews
            {
                if image .isMemberOfClass(UIImageView)
                {
                    if image.tag == del
                    {
                            imageView = image as UIImageView
                        
                    
                        
                    }
                }
            }
            
            for label in self.view.subviews
            {
                if label .isMemberOfClass(UILabel)
                {
                    if label.tag == del
                    {
                        labelView = label as UILabel
                        
                    }
                }
            }
            
            
            
            imageView.removeFromSuperview()
            labelView.removeFromSuperview()
            
//            println(display)
            returnedInformation.text = display
            
            arrayA.removeAtIndex(index)
            array.removeAtIndex(index)
            arrayContent.removeAtIndex(index)
            arrayLabels.removeAtIndex(index)
            
            
            i = i - 37
            a = a - 37
            gate--
            
            
        }
    
        
    
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 188, green: 174, blue: 199, alpha: 1)
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    override func shouldAutorotate() -> Bool {
        return true
        
        
    }
    
    override func supportedInterfaceOrientations() -> Int {
        
        return Int(UIInterfaceOrientationMask.LandscapeLeft.rawValue) | Int(UIInterfaceOrientationMask.LandscapeRight.rawValue)
        
        
    }
    
    
}
