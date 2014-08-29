//
//  Character.swift
//  loveless
//
//  Created by Corey Casado on 8/28/14.
//  Copyright (c) 2014 Kinetic Core. All rights reserved.
//

import SpriteKit

class Character {
    var isTurnComplete: Bool
    var maxMoves: Int
    
    init(){
        maxMoves = 0;
        isTurnComplete = false;
    }
    
    init(maxMoves: Int, currentTile: Tile){
        self.maxMoves = maxMoves
        self.isTurnComplete = false;
    }
    

    
}
