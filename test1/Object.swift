//
//  Object.swift
//  test1
//
//  Created by Anton Aleksieiev on 12/1/16.
//  Copyright © 2016 fynjy. All rights reserved.
//

import Foundation
import SpriteKit


class Object: SKNode {
    
    var hasSomePhysics : Bool = false
    init(withDictionary dictionary: Dictionary<String,String>) {
         super.init()
        if let locationString = dictionary["Location"] {
            let location = CGPointFromString(locationString)
            self.position = location
        }
        if let multiples = dictionary["PlaceMultiplesOnX"] {
            guard let amount = Int(multiples) else {return}
            for i in 0..<amount {
                guard let image = dictionary["ImageNamed"] else {return}
                let objectSprite:SKSpriteNode = SKSpriteNode(imageNamed: image)
                objectSprite.size = CGSize(width: 72, height: 12)
                objectSprite.anchorPoint = CGPoint(x: 0, y: 0)
                self.addChild(objectSprite)
                objectSprite.position = CGPoint(x: objectSprite.size.width * CGFloat(i), y: CGFloat(i)+4)
                
                if dictionary["BodyType"] == "rectangle" {
                    hasSomePhysics = true
                    objectSprite.physicsBody = SKPhysicsBody(rectangleOf: objectSprite.size, center: CGPoint(x: objectSprite.size.width/2, y: objectSprite.size.height/2))
                    objectSprite.physicsBody?.isDynamic = false
                    
                }
            }
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
