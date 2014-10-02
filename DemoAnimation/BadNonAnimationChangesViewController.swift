//
//  BadNonAnimationChangesViewController.swift
//  DemoAnimation
//
//  Created by Howard Yeh on 2014-10-01.
//  Copyright (c) 2014 Howard Yeh. All rights reserved.
//

import UIKit

class BadNonAnimationChangesViewController: UIViewController {
    var box: UIView!
    var boxTopLeftPosition: CGPoint!
    var boxTopRightPosition: CGPoint!
    var boxBottomPosition: CGPoint!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Define the vertices of a triangle
        boxTopLeftPosition = CGPoint(x: 40, y: 120)
        boxTopRightPosition = CGPoint(x: view.bounds.width-40, y: 120)
        boxBottomPosition = CGPoint(x: view.center.x, y: 350)

        // Draw an inverted triangle as the path of animation.
        let trackFrame = CGRect(
            origin: boxTopLeftPosition,
            size: CGSize(width: boxTopRightPosition.x - boxTopLeftPosition.x,
                height: boxBottomPosition.y - boxTopLeftPosition.y))
        let track = InvertedTriangleView(frame: trackFrame)
        track.backgroundColor = UIColor.whiteColor()
        view.addSubview(track)

        box = UIView()
        box.backgroundColor = UIColor.blueColor()
        box.center = boxBottomPosition
        box.bounds.size = CGSize(width: 60, height: 60)
        view.addSubview(box)
    }

    @IBAction func moveToLeft() {
        box.center = boxBottomPosition
        UIView.animateWithDuration(1,
            animations: {
                self.box.center = self.boxTopLeftPosition
            },
            completion: { completed in
        })
    }

    @IBAction func moveToRight() {
        box.center = boxBottomPosition
        UIView.animateWithDuration(1,
            animations: {
                self.box.center = self.boxTopRightPosition
            },
            completion: { completed in
        })
    }

    class InvertedTriangleView: UIView {
        override func drawRect(rect: CGRect) {
            let c = UIGraphicsGetCurrentContext()

            CGContextMoveToPoint(c, 0, 0)
            CGContextAddLineToPoint(c, frame.width, 0)
            CGContextAddLineToPoint(c, frame.width / 2, frame.height)
            CGContextClosePath(c)

            CGContextSetLineWidth(c, 1)
            CGContextSetStrokeColorWithColor(c, UIColor.redColor().CGColor)
            CGContextStrokePath(c)
        }
    }
}




