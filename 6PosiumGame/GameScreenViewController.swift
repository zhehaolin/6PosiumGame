//
//  GameScreenViewController.swift
//  6PosiumGame
//
//  Created by Student on 3/13/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // Load 'GameScene.sks' as a GKScene. This provides gameplay related content
        // including entities and graphs.
        if let scene = GKScene(fileNamed: "GameScene.sks") {
            
            
            if let sceneNode = scene.rootNode as? GameScene {
                
                // Copy gameplay related content over to the scene
                sceneNode.entities = scene.entities
                sceneNode.graphs = scene.graphs
                
                // Set the scale mode to scale to fit the window
                sceneNode.scaleMode = .aspectFill
                
                // Present the scene
                if let view = self.view as! SKView? {
                    view.presentScene(sceneNode)
                    
                    view.ignoresSiblingOrder = true
                    
                    view.showsFPS = true
                    view.showsNodeCount = true
                }
            }else{
                print("Not working. You want 'GameScene', but you have: \(String(describing: scene.rootNode))")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
