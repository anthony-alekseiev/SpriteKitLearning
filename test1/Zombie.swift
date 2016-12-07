//
//  Zombie.swift
//  test1
//
//  Created by Anton Aleksieiev on 11/30/16.
//  Copyright © 2016 fynjy. All rights reserved.
//

import Foundation
import SpriteKit

class Zombie : SKSpriteNode {
    
    enum ZombieState : Int {
        case Idle
        case Moving
    }
    
    var imageName = 2
    var currentState = ZombieState.Idle

    init(imageName: String) {
        let imageTexture = SKTexture(imageNamed: imageName)
        super.init(texture: imageTexture, color: SKColor(), size: CGSize(width: 40, height: 60))
        self.physicsBody = SKPhysicsBody(circleOfRadius: self.size.height/2)
        self.physicsBody?.isDynamic = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func changeAnimation() {
        imageName += 1
        if imageName > 10 { imageName = 1 }
        self.texture = SKTexture(imageNamed: String(imageName))
    }

    func changeState() {
        switch currentState {
        case .Moving:
            currentState = .Idle
        case .Idle:
            currentState = .Moving
        }
    }
    
}
