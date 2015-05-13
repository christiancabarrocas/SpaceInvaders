//
//  StartGameScene.swift
//  SpaceInvaders
//
//  Created by Christian Cabarrocas on 13/05/15.
//  Copyright (c) 2015 Wasabilabs. All rights reserved.
//

import UIKit
import SpriteKit

class StartGameScene: SKScene {

    override func didMoveToView(view: SKView) {
        let startGameButton = SKSpriteNode(imageNamed: "newGameButton")
        startGameButton.position = CGPointMake(size.width/2,size.height/2)
        startGameButton.name = "startgame"
        addChild(startGameButton)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        for touch: AnyObject in touches {
            let touchLocation = touch.locationInNode(self)
            let touchedNode = self.nodeAtPoint(touchLocation)
            if(touchedNode.name == "startgame"){
                let gameOverScene = GameScene(size: size)
                gameOverScene.scaleMode = scaleMode
                let transitionType = SKTransition.crossFadeWithDuration(1.0)
                view?.presentScene(gameOverScene,transition: transitionType)
            }
        }
    }
}
