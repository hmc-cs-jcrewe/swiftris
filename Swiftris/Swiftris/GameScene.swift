//
//  GameScene.swift
//  Swiftris
//
//  Created by JCrewe on 4/3/17.
//  Copyright © 2017 Bloc. All rights reserved.
//

import SpriteKit
import GameplayKit

let TickLengthLevelOne = TimeInterval(600)

class GameScene: SKScene {
    
    var tick: ( () -> () )?
    
    var tickLengthMillis = TickLengthLevelOne
    
    var lastTick: NSDate?
    
    
    
    required init(coder aDecoder: NSCoder) {
        
        fatalError("NCCoder not supported")
    }
    
    override init (size: CGSize) {
        super.init(size: size)
        
        anchorPoint = CGPoint(x:0, y:0)
        
        let background = SKSpriteNode(imageNamed: "background")
        
        background.position = CGPoint(x:0, y:0)
        
        background.anchorPoint = CGPoint(x:0, y:1)
        
        addChild(background)
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
        guard let  lastTick = lastTick else {
            
            return
            
        }
        
        let timePassed = lastTick.timeIntervalSinceNow * -1000.0
        
        if timePassed > tickLengthMillis {
            
            self.lastTick = NSDate()
            
            tick?()
        }
        
    }
    
    func startTicking() {
        
        lastTick = NSDate()
        
    }
    
    func stopTicking() {
        
        lastTick = nil
        
    }
    
}
