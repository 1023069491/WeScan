//
//  CGPoint+Utils.swift
//  Scanner
//
//  Created by Boris Emorine on 2/9/18.
//  Copyright © 2018 WeTransfer. All rights reserved.
//

import Foundation

extension CGPoint {
    
    func surroundingSquare(withSize size: CGFloat) -> CGRect {
        return CGRect(x: x - size / 2.0, y: y - size / 2.0, width: size, height: size)
    }
    
    func isWithin(delta: CGFloat, ofPoint point: CGPoint) -> Bool {
        return (fabs(self.x - point.x) < delta) && (fabs(self.y - point.y) < delta)
    }
    
    func cartesian(withHeight height: CGFloat) -> CGPoint {
        return CGPoint(x: x, y: height - y)
    }
    
}
