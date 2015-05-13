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
}
