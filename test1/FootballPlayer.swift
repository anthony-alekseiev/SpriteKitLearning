//
//  FootballPlayer.swift
//  test1
//
//  Created by Anton Aleksieiev on 11/30/16.
//  Copyright © 2016 fynjy. All rights reserved.
//

import Foundation
import SpriteKit

class FootballPlayer : SKSpriteNode {
        
    init(imageName: String) {
        let imageTexture = SKTexture(imageNamed: imageName)
        
        super.init(texture: imageTexture, color: SKColor(), size: CGSize(width: 200, height: 200))
        
        self.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 200, height: 200))
        self.physicsBody?.isDynamic = false
        self.physicsBody?.mass = 1
        
    }
    
    func makeBodyDynamic() {
        self.physicsBody?.isDynamic = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
