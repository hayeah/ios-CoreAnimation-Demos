//
//  ImplicitAnimationViewController.swift
//  DemoAnimation
//
//  Created by Howard Yeh on 2014-09-30.
//  Copyright (c) 2014 Howard Yeh. All rights reserved.
//

import UIKit


class ImplicitAnimationViewController: UIViewController {

    var box: CALayer!
    var boxTopPosition: CGPoint!
    var boxBottomPosition: CGPoint!

    override func viewDidLoad() {
        super.viewDidLoad()

        boxTopPosition = CGPoint(x: view.center.x, y: 120)
        boxBottomPosition = CGPoint(x: view.center.x, y: 350)

        box = CALayer()
        view.layer.addSublayer(box)
        goUp()
    }

    func goUp() {
        box.backgroundColor = UIColor.blueColor().CGColor
        box.bounds.size = CGSize(width: 60, height: 60)
        box.position = boxTopPosition
    }

    func goDown() {
        box.backgroundColor = UIColor.redColor().CGColor
        box.bounds.size = CGSize(width: 120, height: 120)
        box.position = boxBottomPosition
    }

    @IBAction func goUpTapped(sender: UIButton) {
        goUp()
    }

    @IBAction func goDownTapped(sender: UIButton) {
        goDown()
    }

}
