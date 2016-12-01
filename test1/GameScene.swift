//
//  GameScene.swift
//  test1
//
//  Created by Anton Aleksieiev on 11/23/16.
//  Copyright © 2016 fynjy. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    enum ZombieState : Int {
        case Idle
        case Hurt
        case Fire
    }
    
    var currentState = ZombieState.Idle
    var zombieNode : Zombie?
    
    override func didMove(to view: SKView) {
        zombieNode = Zombie(imageName: "8")
        zombieNode!.position = CGPoint(x: 200, y: -200)
        addChild(zombieNode!)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            
        }
    }
}
