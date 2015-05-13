//
//  GameScene.swift
//  SpaceInvaders
//
//  Created by Christian Cabarrocas on 13/05/15.
//  Copyright (c) 2015 Wasabilabs. All rights reserved.
//

import SpriteKit

var invaderNum = 1

class GameScene: SKScene {

    let rowsOfInvaders = 4
    var invaderSpeed = 2
    let leftBounds = CGFloat(30)
    var rightBounds = CGFloat(0)
    var invadersWhoCanFire:[Invader] = []
    
    override func didMoveToView(view: SKView) {
        backgroundColor = SKColor.blackColor()
        setupInvaders()
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        for touch in (touches as! Set<UITouch>) {
           
        }
    }
   
    override func update(currentTime: CFTimeInterval) {

    }
    
    func setupInvaders(){
        var invaderRow = 0;
        var invaderColumn = 0;
        let numberOfInvaders = invaderNum * 2 + 1
        for var i = 1; i <= rowsOfInvaders; i++ {
            invaderRow = i
            for var j = 1; j <= numberOfInvaders; j++ {
                invaderColumn = j
                let tempInvader:Invader = Invader()
                let invaderHalfWidth:CGFloat = tempInvader.size.width/2
                let xPositionStart:CGFloat = size.width/2 - invaderHalfWidth - (CGFloat(invaderNum) * tempInvader.size.width) + CGFloat(10)
                tempInvader.position = CGPoint(x:xPositionStart + ((tempInvader.size.width+CGFloat(10))*(CGFloat(j-1))), y:CGFloat(self.size.height - CGFloat(i) * 46))
                tempInvader.invaderRow = invaderRow
                tempInvader.invaderColumn = invaderColumn
                addChild(tempInvader)
                if(i == rowsOfInvaders){
                    invadersWhoCanFire.append(tempInvader)
                }
            }
        }
    }
}
