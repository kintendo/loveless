//
//  Map.swift
//  loveless
//
//  Created by Corey Casado on 8/28/14.
//  Copyright (c) 2014 Kinetic Core. All rights reserved.
//

import SpriteKit

class Map{
    let gridRows = 9
    let gridCols = 5
    var grid = [[]]
    let tileSize = 64
    
    init(rows: Int, cols: Int, tileSize: Int){
        self.gridRows = rows
        self.gridCols = cols
        self.tileSize = tileSize
    }
    
    
    func drawMap(scene: SKScene){
        
        for col in 0...(gridCols-1) {
            for row in 0...(gridRows-1) {
                var tile = SKSpriteNode(imageNamed:"grass")
                tile.size = CGSizeMake(CGFloat(tileSize), CGFloat(tileSize))
                tile.position = CGPointMake(
                    CGRectGetMinX(scene.frame) + CGFloat(tileSize/2) + CGFloat(tileSize * col),
                    CGRectGetMinY(scene.frame) + CGFloat(tileSize/2) + CGFloat(tileSize * row)
                )
                scene.addChild(tile)
            }
        }
    }

}
