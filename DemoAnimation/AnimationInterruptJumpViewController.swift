//
//  AnimationInterruptJumpViewController.swift
//  DemoAnimation
//
//  Created by Howard Yeh on 2014-10-01.
//  Copyright (c) 2014 Howard Yeh. All rights reserved.
//

import UIKit

class AnimationInterruptJumpViewController: UIViewController {

    var box: CALayer!
    var boxTopPosition: CGPoint!
    var boxBottomPosition: CGPoint!

    override func viewDidLoad() {
        super.viewDidLoad()

        boxTopPosition = CGPoint(x: view.center.x, y: 120)
        boxBottomPosition = CGPoint(x: view.center.x, y: 350)

        box = CALayer()
        box.backgroundColor = UIColor.blueColor().CGColor
        box.bounds.size = CGSize(width: 60, height: 60)
        box.position = boxTopPosition
        view.layer.addSublayer(box)
    }

    func goUp() {
        let move = CABasicAnimation(keyPath: "position")
        move.duration = 3
        move.fromValue = NSValue(CGPoint: box.position)
        move.toValue = NSValue(CGPoint: boxTopPosition)
        box.position = boxTopPosition
        box.addAnimation(move, forKey: "move")
    }

    func goDown() {
        let move = CABasicAnimation(keyPath: "position")
        move.duration = 3
        move.fromValue = NSValue(CGPoint: box.position)
        move.toValue = NSValue(CGPoint: boxBottomPosition)
        box.position = boxBottomPosition
        box.addAnimation(move, forKey: "move")
    }

    @IBAction func goUpTapped(sender: UIButton) {
        goUp()
    }

    @IBAction func goDownTapped(sender: UIButton) {
        goDown()
    }
}
