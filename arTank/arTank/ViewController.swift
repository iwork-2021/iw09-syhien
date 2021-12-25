//
//  ViewController.swift
//  arTank
//
//  Created by nju on 2021/12/25.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    var tankAnchor: TinyToyTank._TinyToyTank?
    var isActionPlaying: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tankAnchor = try! TinyToyTank.load_TinyToyTank()
        tankAnchor?.turret?.setParent(tankAnchor?.tank, preservingWorldTransform: true)
        tankAnchor?.actions.actionComplete.onAction = { _ in
            self.isActionPlaying = false
        }
        // Add the box anchor to the scene
        arView.scene.anchors.append(tankAnchor!)
    }
    
    @IBAction func fireTouched(_ sender: Any) {
        guard isActionPlaying == false else {
            return
        }
        isActionPlaying = true
        tankAnchor?.notifications.cannonFire.post()
    }
    
    @IBAction func forwardTouched(_ sender: Any) {
        guard isActionPlaying == false else {
            return
        }
        isActionPlaying = true
        tankAnchor?.notifications.tankForward.post()
    }
    
    @IBAction func tankLeftTouched(_ sender: Any) {
        guard isActionPlaying == false else {
            return
        }
        isActionPlaying = true
        tankAnchor?.notifications.tankLeft.post()
    }
    
    @IBAction func tankRightTouched(_ sender: Any) {
        guard isActionPlaying == false else {
            return
        }
        isActionPlaying = true
        tankAnchor?.notifications.tankRight.post()
    }
    
    @IBAction func turretLeftTouched(_ sender: Any) {
        guard isActionPlaying == false else {
            return
        }
        isActionPlaying = true
        tankAnchor?.notifications.turretLeft.post()
    }
    
    @IBAction func turretRightTouched(_ sender: Any) {
        guard isActionPlaying == false else {
            return
        }
        isActionPlaying = true
        tankAnchor?.notifications.tankRight.post()
    }
}
