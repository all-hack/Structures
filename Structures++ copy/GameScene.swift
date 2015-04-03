//
//  GameScene.swift
//  Structures++
//
//  Created by oliver belanger on 3/1/15.
//  Copyright (c) 2015 HackMad. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var viewController: UIViewController?
    
    var back = SKSpriteNode()
    
    var object1 = SKSpriteNode()
    var push = SKSpriteNode()
    var pop = SKSpriteNode()
    
    
    var moveObjects = SKNode()
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Helvetica")
        myLabel.text = "Back";
        myLabel.fontSize = 65;
        myLabel.fontColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        myLabel.position = CGPoint(x:CGFloat(90) , y:CGFloat(110));
        
        self.addChild(myLabel)
        
//background
        self.backgroundColor = UIColor(red: 188, green: 174, blue: 199, alpha: 1)


        
        
        
//object1
        var object1Texture = SKTexture(imageNamed: "ob3.png")
        
        object1 = SKSpriteNode(texture: object1Texture)
        object1.position = CGPointMake(CGRectGetMaxX(self.frame) - 120, CGRectGetMidY(self.frame) - 90)
        
//        object1.position = CGPointMake(CGRectGetMaxX(self.frame) - 120, CGRectGetMaxY(self.frame))
        
        
        object1.name = "ob1"
        
    //    object1.physicsBody = SKPhysicsBody(rectangleOfSize: CGSizeMake(object1.size.width, object1.size.height))
        object1.physicsBody?.dynamic = false
        object1.physicsBody?.allowsRotation = false
/*        bird.physicsBody?.categoryBitMask = birdGroup
        bird.physicsBody?.collisionBitMask = objectGroup
        bird.physicsBody?.collisionBitMask = gapGroup
        bird.physicsBody?.contactTestBitMask = objectGroup */
        object1.zPosition = 1
        
        
        let objectLabel = SKLabelNode(fontNamed: "Helvetica")
        objectLabel.text = "edd"
        objectLabel.fontSize = 30
        objectLabel.fontColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        objectLabel.position = CGPointMake(CGRectGetMidX(object1.frame),CGRectGetMidY( object1.frame) - 8)
        
//        var place = SKAction.moveToY(CGRectGetMidY(object1.frame) - 8, duration: 0)
        
//        objectLabel.position = CGPointMake(CGRectGetMidX(object1.frame),CGRectGetMidY( object1.frame) - 8)
        
        objectLabel.zPosition = 4
        object1.addChild(objectLabel)
        var place = SKAction.moveToY(CGRectGetMidY(object1.frame) - 8, duration: 0)

        
        
        
    //    var move = SKAction.moveToY(CGRectGetMidY(self.frame) - 90, duration: 1)
 //       var sync = SKAction.runAction(place, onChildWithName: "objectLabel")
   //     var seque = SKAction.sequence([move, sync])
        
     //   object1.runAction(move)
  //      object1.runAction(sync)
        
        self.addChild(object1)
        
        
        
        
        
        
        
        
//stack label
        let stackLabel = SKLabelNode(fontNamed: "Helvetica")
        stackLabel.text = "stack"
        stackLabel.fontSize = 50
        stackLabel.fontColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        stackLabel.position = CGPointMake(CGRectGetMaxX(self.frame) - 120, CGRectGetMidY(self.frame) - 170)
        self.addChild(stackLabel)
        

//push button 
        var pushTexture = SKTexture(imageNamed: "ob5.png")
        push = SKSpriteNode(texture: pushTexture)
        push.position = CGPointMake(CGRectGetMaxX(self.frame) - 645, CGRectGetMidY(self.frame) - 200)
        push.name = "push"
        push.physicsBody = SKPhysicsBody(circleOfRadius: push.size.height/2)
        push.physicsBody?.dynamic = false
        
        self.addChild(push)

//push label
        let pushLabel = SKLabelNode(fontNamed: "Helvetica")
        pushLabel.text = "Push()"
        pushLabel.fontSize = 45
        pushLabel.fontColor = UIColor(red: 66, green: 27, blue: 80, alpha: 1)
        pushLabel.position = CGPointMake(CGRectGetMidX(push.frame) + 5,CGRectGetMidY( push.frame) - 15)
        
        pushLabel.zPosition = 2
        self.addChild(pushLabel)
  
//pop button
        var popTexture = SKTexture(imageNamed: "ob5.png")
        pop = SKSpriteNode(texture: popTexture)
        pop.position = CGPointMake(CGRectGetMaxX(self.frame) - 400, CGRectGetMidY(self.frame) - 200)
        pop.name = "push"
        pop.physicsBody = SKPhysicsBody(circleOfRadius: pop.size.height/2)
        pop.physicsBody?.dynamic = false
        
        self.addChild(pop)
        
//pop label
        let popLabel = SKLabelNode(fontNamed: "Helvetica")
        popLabel.text = "Pop()"
        popLabel.fontSize = 45
        popLabel.fontColor = UIColor(red: 66, green: 27, blue: 80, alpha: 1)
        popLabel.position = CGPointMake(CGRectGetMidX(pop.frame) + 5,CGRectGetMidY( pop.frame) - 15)
        
        pushLabel.zPosition = 2
        self.addChild(popLabel)
        
        
        
        
        
    }
    
    
    
    
    
    func returnToMainMenu(){
  //      var vc: UIViewController = UIViewController()
//        vc = self.view!.window!.
//        self.viewController.performSegueWithIdentifier("view1", sender: nil)
        
        
    }
    
    

    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            let touchedNode = nodeAtPoint(location)
            
            if touchedNode.name == "ob1"
            {
                
                println("hey")
                
            }
            

            
        
        }

        
      
        
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    
    
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        
        for touch in touches {
            let location = touch.locationInNode(self)
            let touchedNode = nodeAtPoint(location)
            touchedNode.position = location
        }
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
}
