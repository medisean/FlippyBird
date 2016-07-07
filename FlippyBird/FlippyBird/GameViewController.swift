//
//  GameViewController.swift
//  FlippyBird
//
//  Created by bruce on 16/7/7.
//  Copyright (c) 2016年 bruce. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        if let sk = self.view as? SKView {
            if sk.scene == nil {
                // create scene
                let size = sk.bounds.size.height / sk.bounds.size.width
                let scene = GameScene(size: CGSize(width: 320, height: 320 * size))
                sk.showsFPS = true
                sk.showsNodeCount = true
                sk.showsPhysics = true
                sk.ignoresSiblingOrder = true

                scene.scaleMode = .AspectFill
                sk.presentScene(scene)
            }
        }
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}