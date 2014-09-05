//
//  tile.swift
//  loveless
//
//  Created by Kin Thai on 8/21/14.
//  Copyright (c) 2014 Kinetic Core. All rights reserved.
//

import Foundation
import SpriteKit

class Tile {
    

    
    var currentCharacter:Character? = nil
    var location:CGPoint? = nil
    var background = SKSpriteNode()
    var selectLayer = SKSpriteNode()
    
    init(texture: SKTexture, size: CGSize, position: CGPoint) {
        background.texture = texture
        background.size = size
        background.position = position
    }

    func hasCharacter() -> Bool {
        return currentCharacter != nil
    }
    
    func setPosition(position: CGPoint) {
        background.position = position
    }
    
    func selectTile () {
        //selects the tile
        selectLayer.color = SKColor.blueColor()
        selectLayer.position = background.position
    }
    
    func clearTileSelect () {
        //unselects the tile
    }
}
