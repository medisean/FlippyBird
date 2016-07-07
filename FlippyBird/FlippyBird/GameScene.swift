//
//  GameScene.swift
//  FlippyBird
//
//  Created by bruce on 16/7/7.
//  Copyright (c) 2016年 bruce. All rights reserved.
//

import SpriteKit

enum Layer: CGFloat {
    case background
    case ground
    case role
}

class GameScene: SKScene {

    let unit = SKNode()
    var gameStart: CGFloat = 0
    var gameHeight: CGFloat = 0

    override func didMoveToView(view: SKView) {
        addChild(unit)
        setBackground()
        setGround()
    }

    // MARK: set background
    func setBackground() {
        let background = SKSpriteNode(imageNamed: "Background")
        background.anchorPoint = CGPoint(x: 0.5, y: 1.0)
        background.position = CGPoint(x: size.width/2, y: size.height)
        background.zPosition = Layer.background.rawValue
        unit.addChild(background)

        gameStart = size.height - background.size.height
        gameHeight = background.size.height
    }

    // MARK: set ground
    func setGround() {
        let ground = SKSpriteNode(imageNamed: "Ground")
        ground.anchorPoint = CGPoint(x: 0, y: 1.0)
        ground.position = CGPoint(x: 0 , y: gameStart)
        ground.zPosition = Layer.ground.rawValue

        unit.addChild(ground)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {

    }

    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
