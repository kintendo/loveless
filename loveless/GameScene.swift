//
//  GameScene.swift
//  loveless
//
//  Created by Kin Thai on 6/12/14.
//  Copyright (c) 2014 Kinetic Core. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let gridRows = 5
    let gridCols = 4
    let grid = [[]]
    let tileSize = 40
    
    override func didMoveToView(view: SKView) {
        
        //SKSpriteNode(imageNamed:"grass")
        
        for col in 1...gridCols {
            for row in 1...gridRows {
                var tile = SKSpriteNode(imageNamed:"grass")
                tile.size = CGSizeMake(CGFloat(tileSize), CGFloat(tileSize))
                tile.position = CGPointMake(
                    CGRectGetMidX(self.frame) + CGFloat(tileSize * col),
                    CGRectGetMidY(self.frame) + CGFloat(tileSize * row)
                )
                self.addChild(tile)
//                grid[col][row] = tile
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
