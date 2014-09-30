//
//  AnimateUIViewViewController.swift
//  DemoAnimation
//
//  Created by Howard Yeh on 2014-09-30.
//  Copyright (c) 2014 Howard Yeh. All rights reserved.
//

import UIKit

class AnimateUIViewViewController: UIViewController {

    var box: UIView!
    var boxTopPosition: CGPoint!
    var boxBottomPosition: CGPoint!

    override func viewDidLoad() {
        super.viewDidLoad()

        boxTopPosition = CGPoint(x: view.center.x, y: 120)
        boxBottomPosition = CGPoint(x: view.center.x, y: 350)

        box = UIView()
        box.backgroundColor = UIColor.blueColor()
        box.bounds.size = CGSize(width: 60, height: 60)
        box.center = boxTopPosition
        view.addSubview(box)
    }

    func goUp() {
        UIView.animateWithDuration(0.25, animations: {
            // box.center = boxTopPosition
            self.box.layer.position = self.boxTopPosition
        })
    }

    func goDown() {
        UIView.animateWithDuration(0.25, animations: {
            // box.center = boxBottomPosition
            self.box.layer.position = self.boxBottomPosition
        })
    }

    @IBAction func goUpTapped(sender: UIButton) {
        goUp()
    }

    @IBAction func goDownTapped(sender: UIButton) {
        goDown()
    }

}
