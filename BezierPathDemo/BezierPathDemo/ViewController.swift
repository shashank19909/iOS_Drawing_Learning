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
                drawCircularAlphabets()
//        drawString(stringToDraw: "Hello")
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
        
        let context = UIGraphicsGetCurrentContext()
        
        let bunnyPath = UIBezierPath.bunnyPath()
        
        // First state
        
        
        // This adds clipping. Comment out if clipping is to be removed
        let clippingPath = UIBezierPath(roundedRect:CGRect(x: 0, y: 0, width: 400 , height: 400), cornerRadius: 2.0)
        context?.saveGState()
        context?.addPath(clippingPath.cgPath)
        context?.clip()
        
        
        UIColor.green.setFill()
        UIColor.red.setStroke()
        bunnyPath.lineWidth = 5.0
        bunnyPath.stroke()
        bunnyPath.fill()
        
        context?.saveGState()
        
        // second state
        UIColor.blue.setFill()
        UIColor.black.setStroke()
        
        bunnyPath.apply(CGAffineTransform(translationX: 30, y: 20))
        bunnyPath.lineWidth = 10.0
        bunnyPath.fill()
        bunnyPath.stroke()
        
        context?.restoreGState()
        
        
        bunnyPath.apply(CGAffineTransform(translationX: 30, y: 20))
        
        
        
        // Draw with the first
        bunnyPath.fill()
        bunnyPath.stroke()
        
        
        context?.restoreGState()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        imageView?.image = image
    }
    
    fileprivate func drawString(stringToDraw: String) {
        let targetFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
        UIGraphicsBeginImageContext(targetFrame.size)
        let string = stringToDraw as NSString
        string.draw(at:  CGPoint(x: 100, y: 100), withAttributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 50)])
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        imageView?.image = image
    }
    
    fileprivate func drawCircularAlphabets() {
        let alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        
        UIGraphicsBeginImageContext(self.view.bounds.size)
        let context = UIGraphicsGetCurrentContext()
        
        
        let center = self.view.center
        let radius = center.x * 0.99
        
        // Translate the context center
        
        context?.translateBy(x: center.x, y: center.y)
        
        for (i, letter) in alphabets.characters.enumerated() {
            
            let letterSize = (String(letter) as NSString).size(attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 12.0)])
            
            
            // Calculate the current angular offset
            let theta = Double(i) * (2 * Double.pi / Double(alphabets.characters.count))
            // Encapsulate each stage of the drawing
            context?.saveGState()
            // Rotate the context
            
            context?.rotate(by: CGFloat(theta))
            // Translate up to the edge of the radius and move left by // half the letter width. The height translation is negative // as this drawing sequence uses the UIKit coordinate system. // Transformations that move up go to lower y values.
            context?.translateBy(x: -letterSize.width / 2, y: -radius)
            
            // Draw the letter and pop the transform state
            (String(letter) as NSString).draw(at:  CGPoint(x: 0, y: 0), withAttributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 50)])
            context?.restoreGState()
        }
        // Retrieve and return the image
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        imageView?.image = image
        
        
        
    }
    
}

