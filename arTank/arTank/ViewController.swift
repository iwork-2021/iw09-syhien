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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tankAnchor = try! TinyToyTank.load_TinyToyTank()
        // Add the box anchor to the scene
        arView.scene.anchors.append(tankAnchor!)
    }
}
