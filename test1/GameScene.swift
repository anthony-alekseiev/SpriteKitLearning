//
//  GameScene.swift
//  test1
//
//  Created by Anton Aleksieiev on 11/23/16.
//  Copyright © 2016 fynjy. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var increment : CGFloat = 0
    var footballPlayerNode : FootballPlayer?

    
    override func didMove(to view: SKView) {
        footballPlayerNode = FootballPlayer(imageName: "FootballPlayer")
        footballPlayerNode?.position = CGPoint(x: -100, y: -100)
        addChild(footballPlayerNode!)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            
            increment += 1
            footballPlayerNode?.position = CGPoint(x: footballPlayerNode!.position.x + (increment * 10), y: footballPlayerNode!.position.y)
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        
    }
}
