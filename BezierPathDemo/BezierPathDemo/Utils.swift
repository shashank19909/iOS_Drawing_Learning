//
//  Utils.swift
//  BezierPathDemo
//
//  Created by shashank@shop101 on 6/1/17.
//  Copyright © 2017 Shas. All rights reserved.
//

import Foundation
import UIKit


extension UIBezierPath {
    
    
    class func bunnyPath() -> UIBezierPath {
        let shapePath = UIBezierPath()
        
        shapePath.move(to: CGPoint(x: 392.05, y: 150.53))
        shapePath.addCurve(to: CGPoint(x: 343.11, y: 129.56), controlPoint1: CGPoint(x: 379.34, y: 133.37) , controlPoint2: CGPoint(x: 359, y: 133.37))
        shapePath.addCurve(to: CGPoint(x: 305.61, y: 71.72), controlPoint1: CGPoint(x: 341.2, y: 119.39) , controlPoint2: CGPoint(x: 316.41, y: 71.08))
        shapePath.addCurve(to: CGPoint(x: 304.34, y: 100.96), controlPoint1: CGPoint(x: 294.8, y: 72.35) , controlPoint2: CGPoint(x: 302.43, y: 79.35))
        
        shapePath.addCurve(to: CGPoint(x: 283.36, y: 84.43), controlPoint1: CGPoint(x: 299.25, y: 95.24) , controlPoint2: CGPoint(x: 287.81, y: 73.63))
        
        shapePath.addCurve(to: CGPoint(x: 301.79, y: 154.99), controlPoint1: CGPoint(x: 272.42, y: 111.01) , controlPoint2: CGPoint(x: 302.43, y: 148.63))
        
        shapePath.addCurve(to: CGPoint(x: 287.17, y: 191.85), controlPoint1: CGPoint(x: 301.16, y: 161.34) , controlPoint2: CGPoint(x: 299, y: 186.78))
        
        shapePath.addCurve(to: CGPoint(x: 194.38, y: 221.09), controlPoint1: CGPoint(x: 282.72, y: 193.76) , controlPoint2: CGPoint(x: 240.78, y: 195.66))
        
        shapePath.addCurve(to: CGPoint(x: 128.27, y: 320.25), controlPoint1: CGPoint(x: 147.97, y: 246.51) , controlPoint2: CGPoint(x: 138.44, y: 282.11))
        
        shapePath.addCurve(to: CGPoint(x: 124.75, y: 348.92), controlPoint1: CGPoint(x: 125.53, y: 330.51) , controlPoint2: CGPoint(x: 124.54, y: 340.12))
        
        shapePath.addCurve(to: CGPoint(x: 118.34, y: 358.13), controlPoint1: CGPoint(x: 122.92, y: 350.31) , controlPoint2: CGPoint(x: 120.74, y: 353.02))
        
        shapePath.addCurve(to: CGPoint(x: 136.06, y: 388.68), controlPoint1: CGPoint(x: 112.42, y: 370.73) , controlPoint2: CGPoint(x: 123.06, y: 383.91))
        
        shapePath.addCurve(to: CGPoint(x: 144.8, y: 399.06), controlPoint1: CGPoint(x: 138.8, y: 392.96) , controlPoint2: CGPoint(x: 141.79, y: 396.49))
        
        
        shapePath.addCurve(to: CGPoint(x: 210.9, y: 408.6), controlPoint1: CGPoint(x: 158.14, y: 392.96) , controlPoint2: CGPoint(x: 205.18, y: 406.69))
        
        shapePath.addCurve(to: CGPoint(x: 240.78, y: 417.5), controlPoint1: CGPoint(x: 216.62, y: 410.5) , controlPoint2: CGPoint(x: 234.41, y: 417.5))
        
        shapePath.addCurve(to: CGPoint(x: 267.47, y: 411.78), controlPoint1: CGPoint(x: 247.13, y: 417.5) , controlPoint2: CGPoint(x: 267.47, y: 419.4))
        
        
        shapePath.addCurve(to: CGPoint(x: 250.3, y: 385.71), controlPoint1: CGPoint(x: 267.47, y: 394.61) , controlPoint2: CGPoint(x: 250.3, y: 385.71))
        
        shapePath.addCurve(to: CGPoint(x: 274.46, y: 371.73), controlPoint1: CGPoint(x: 250.3, y: 385.71) , controlPoint2: CGPoint(x: 260.48, y: 379.99))
        
        shapePath.addCurve(to: CGPoint(x: 302.43, y: 350.12), controlPoint1: CGPoint(x: 288.45, y: 363.47) , controlPoint2: CGPoint(x: 297.34, y: 350.76))
        
        
        shapePath.addCurve(to: CGPoint(x: 318.32, y: 389.53), controlPoint1: CGPoint(x: 312.22, y: 348.89) , controlPoint2: CGPoint(x: 311.33, y: 381.9))
        
        shapePath.addCurve(to: CGPoint(x: 341.84, y: 421.94), controlPoint1: CGPoint(x: 325.32, y: 397.15) , controlPoint2: CGPoint(x: 332.15, y: 418.51))
        
        shapePath.addCurve(to: CGPoint(x: 375.53, y: 413.68), controlPoint1: CGPoint(x: 349.08, y: 424.51) , controlPoint2: CGPoint(x: 373.62, y: 421.31))
        
        
        shapePath.addCurve(to: CGPoint(x: 367.26, y: 398.43), controlPoint1: CGPoint(x: 377.43, y: 406.06) , controlPoint2: CGPoint(x: 372.35, y: 405.42))
        
        
        shapePath.addCurve(to: CGPoint(x: 361.54, y: 352.66), controlPoint1: CGPoint(x: 362.18, y: 391.43) , controlPoint2: CGPoint(x: 356.46, y: 363.47))
        
        shapePath.addCurve(to: CGPoint(x: 378.07, y: 277.66), controlPoint1: CGPoint(x: 366.63, y: 341.86) , controlPoint2: CGPoint(x: 376.8, y: 296.73))
        
        shapePath.addCurve(to: CGPoint(x: 388.87, y: 220.45), controlPoint1: CGPoint(x: 379.34, y: 258.59) , controlPoint2: CGPoint(x: 378.7, y: 245.88))
        
        
        shapePath.addCurve(to: CGPoint(x: 411.12, y: 189.31), controlPoint1: CGPoint(x: 405.4, y: 214.1) , controlPoint2: CGPoint(x: 410.48, y: 197.57))
        
        shapePath.addCurve(to: CGPoint(x: 392.05, y: 150.53), controlPoint1: CGPoint(x: 411.76, y: 181.04) , controlPoint2: CGPoint(x: 404.76, y: 167.7))
        
        shapePath.close()
        return shapePath
    }
    
    
}
