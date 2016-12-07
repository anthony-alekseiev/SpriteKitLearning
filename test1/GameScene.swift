//
//  GameScene.swift
//  test1
//
//  Created by Anton Aleksieiev on 11/23/16.
//  Copyright © 2016 fynjy. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var zombieNode : Zombie?
    
    override func didMove(to view: SKView) {
        self.anchorPoint = CGPoint(x: 0, y: 0)
        let groundData : [String:String] = ["ImageNamed":"ground",
                                           "BodyType":"rectangle",
                                           "Location":"{0,100}",
                                           "PlaceMultiplesOnX":"10"]
        view.showsPhysics = true
        
        zombieNode = Zombie(imageName: "1")
        zombieNode?.position = CGPoint(x: 50, y: 200)
        addChild(zombieNode!)
        
        let platform = Object(withDictionary: groundData)
        addChild(platform)
        platform.position = self.anchorPoint
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            _ = touch.location(in: self)
        }
    }
    
    
    
    override func update(_ currentTime: TimeInterval) {

    }
    
}
