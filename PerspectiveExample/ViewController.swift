//
//  ViewController.swift
//  PerspectiveExample
//
//  Created by 山本響 on 2021/11/28.
//

import UIKit
import Perspective

class ViewController: UIViewController {
    
    @IBOutlet weak var perspectiveView: PerspectiveView!
    
    let motionBehaviour = PerspectiveMotionBehaviour()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupPerspective()
        updateMotionBehaviourOrientation(with: view.bounds.size)
        
    }
    
    func updateMotionBehaviourOrientation(with size: CGSize) {
        if size.width > size.height {
            motionBehaviour.orientation = .horizontal
        }
        else {
            motionBehaviour.orientation = .vertical
        }
    }
    
    func setupPerspective() {
        perspectiveView.contentSize = CGSize(width: 1599, height: view.frame.height + 50)
        
        for i in stride(from: 10, to: 0, by: -1) {
//            let imgView = UIImageView(image: UIImage(named: "castle-layer0\(i)"))
            let imgView = UIImageView(image: UIImage(named: "snow-layer0\(i)"))
            imgView.frame.size = CGSize(width: 1599, height: 900)
            
            perspectiveView.addArrangedSubview(imgView)
        }
        
        
        perspectiveView.addBehaviour(PerspectiveScrollBehaviour())
        //perspectiveView.addBehaviour(motionBehaviour)
        
    }
}

