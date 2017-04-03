//
//  GameViewController.swift
//  Swiftris
//
//  Created by JCrewe on 4/3/17.
//  Copyright © 2017 Bloc. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    var scene: GameScene!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Configure the view
        let skView = view as! SKView
        
        skView.isMultipleTouchEnabled = false
        
        //Create and configure scene
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .aspectFill
        
        //Present the scene 
        skView.presentScene(scene)
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
