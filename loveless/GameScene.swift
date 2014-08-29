//
//  GameScene.swift
//  loveless
//
//  Created by Kin Thai on 6/12/14.
//  Copyright (c) 2014 Kinetic Core. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    

    let gridRows = 9
    let gridCols = 5
    var grid = [[]]
    let tileSize = 64
    var planeX = 0
    var planeY = 0
    var plane = SKSpriteNode(imageNamed: "Spaceship")
    
    override func didMoveToView(view: SKView) {
    

        self.scaleMode = SKSceneScaleMode.ResizeFill
        
        self.anchorPoint = CGPointMake(0,0)
        //SKSpriteNode(imageNamed:"grass")
        
        for col in 0...(gridCols-1) {
            for row in 0...(gridRows-1) {
                var tile = SKSpriteNode(imageNamed:"grass")
                tile.size = CGSizeMake(CGFloat(tileSize), CGFloat(tileSize))
                tile.position = CGPointMake(
                    CGRectGetMinX(self.frame) + CGFloat(tileSize/2) + CGFloat(tileSize * col),
                    CGRectGetMinY(self.frame) + CGFloat(tileSize/2) + CGFloat(tileSize * row)
                )
                self.addChild(tile)
            }
        }

        plane.size = CGSizeMake(CGFloat(tileSize*3/4), CGFloat(tileSize*3/4))
        
        plane.position = CGPointMake(
            CGRectGetMinX(self.frame) + CGFloat(tileSize/2) + CGFloat(tileSize * planeX),
            CGRectGetMinY(self.frame) + CGFloat(tileSize/2) + CGFloat(tileSize * planeY)
        )
        self.addChild(plane)

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
