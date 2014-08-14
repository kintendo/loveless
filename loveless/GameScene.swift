//
//  GameScene.swift
//  loveless
//
//  Created by Kin Thai on 6/12/14.
//  Copyright (c) 2014 Kinetic Core. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let tile = SKSpriteNode(imageNamed:"grass")
    
    override func didMoveToView(view: SKView) {
        //tile.size = CGSizeMake(CGFloat(20), CGFloat(5))
        
//        var grid: SKSpriteNode[][] = [[self.tile, self.tile],[self.tile, self.tile]]
                var grid: SKSpriteNode[][] = [[self.tile],[self.tile]]

        for row in grid {
            for item in row {
                item.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
                self.addChild(item)
            }
        }
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            //do nothing for now
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
