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
        
    init(imageName: String) {
        let imageTexture = SKTexture(imageNamed: imageName)
        
        super.init(texture: imageTexture, color: SKColor(), size: imageTexture.size())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
