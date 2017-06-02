//
//  ViewController.swift
//  BezierPathDemo
//
//  Created by shashank@shop101 on 5/13/17.
//  Copyright © 2017 Shas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawBunny()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    fileprivate func drawUpwardArrow() {
        guard let imageView = imageView else {
            return
        }
        let targetFrame = CGRect(x: 0, y: 0, width: 200, height: 100)
        let elipseRect = targetFrame.insetBy(dx: 10, dy: 10)
        UIGraphicsBeginImageContextWithOptions(targetFrame.size, true, 0.0)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(UIColor.white.cgColor)
        context?.setLineWidth(4.0)
        context?.setStrokeColor(UIColor.blue.cgColor)
        context?.fill(targetFrame)
        context?.strokeEllipse(in: elipseRect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        imageView.image = image
    }

    fileprivate func drawBezierUpwardArrow() {
        guard let imageView = imageView else {
            return
        }
        let targetFrame = CGRect(x: 0, y: 0, width: 200, height: 100)
        let elipseRect = targetFrame.insetBy(dx: 10, dy: 10)
        UIGraphicsBeginImageContextWithOptions(targetFrame.size, true, 1.0)
        let path = UIBezierPath(ovalIn: elipseRect)
        path.lineWidth = 4.0
        UIColor.red.setStroke()
        UIColor.yellow.setFill()
        let context = UIGraphicsGetCurrentContext()?.fill(targetFrame)
        UIColor.red.setFill()
        path.fill()
        path.stroke()
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        imageView.image = image
    }

    private func drawOverlappingCircles() {
        let targetFrame = CGRect(x: 0, y: 0, width: 200, height: 200)
        let circle1Rect = targetFrame.offsetBy(dx: 10, dy: 0)
        let circle2Rect = targetFrame.offsetBy(dx: -10, dy: 0)
        UIGraphicsBeginImageContext(targetFrame.size)
        let circle2 = UIBezierPath(ovalIn: circle2Rect.insetBy(dx: 50 , dy: 50))
        UIColor.red.setFill()
        circle2.fill()
        let circle1 = UIBezierPath(ovalIn: circle1Rect.insetBy(dx: 50, dy: 50))
        UIColor.green.setFill()
        circle1.fill()
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        imageView?.image = image
    }
    
    
    private func drawBunny() {
        let targetFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
        UIGraphicsBeginImageContext(targetFrame.size)
        UIColor.green.setFill()
        UIColor.red.setStroke()
        let bunnyPath = UIBezierPath.bunnyPath()
        bunnyPath.lineWidth = 5.0
        bunnyPath.stroke()
        bunnyPath.fill()
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        imageView?.image = image
    }
    
    
}

