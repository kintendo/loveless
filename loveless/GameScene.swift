//
//  GameScene.swift
//  loveless
//
//  Created by Kin Thai on 6/12/14.
//  Copyright (c) 2014 Kinetic Core. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    
    let tileSize = 64
    var planeX = 0
    var planeY = 0
    var plane = SKSpriteNode(imageNamed: "Spaceship")

    var test2 = SKSpriteNode(color: UIColor.blueColor(), size: CGSizeMake(CGFloat(32), CGFloat(32)))
    
    override func didMoveToView(view: SKView) {
    

        self.scaleMode = SKSceneScaleMode.ResizeFill
        self.anchorPoint = CGPointMake(0,0)
        
        
        //SKSpriteNode(imageNamed:"grass")
        
        var sceneMap: Map
        
        sceneMap = Map(rows: 9, cols: 5, tileSize: 64)
        
        sceneMap.drawMap(self)

        plane.size = CGSizeMake(CGFloat(tileSize*3/4), CGFloat(tileSize*3/4))
        
        plane.position = CGPointMake(
            CGRectGetMinX(self.frame) + CGFloat(tileSize/2) + CGFloat(tileSize * planeX),
            CGRectGetMinY(self.frame) + CGFloat(tileSize/2) + CGFloat(tileSize * planeY)
        )
        self.addChild(plane)
        
        test2.alpha = CGFloat(0)
        test2.zPosition = 1
        plane.zPosition = 2
        self.addChild(test2)
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {

            let point = touch.locationInNode(self)
            
            if (point.x < plane.position.x-plane.size.width) {
                --self.planeX
            } else if (point.x > plane.position.x+plane.size.width) {
                ++self.planeX
            }
            
            if (point.y < plane.position.y-plane.size.height) {
                --self.planeY
            } else if (point.y > plane.position.y+plane.size.height) {
                ++self.planeY
            }
            
            test2.alpha = CGFloat(0.1)
            test2.position = point
//
            plane.position = CGPointMake(
                CGRectGetMinX(self.frame) + CGFloat(tileSize/2) + CGFloat(tileSize * planeX),
                CGRectGetMinY(self.frame) + CGFloat(tileSize/2) + CGFloat(tileSize * planeY)
            )
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
