//
//  Cross.swift
//  TricycleGamePad
//
//  Created by Mansur Ahmed on 2021-08-01.
//

import SwiftUI

// MARK: Cross Shape
struct Cross: Shape {
    /// Thickness of each arm.
    var thickness: CGFloat = 30
    
    /// Corner radius of each arm.
    var cornerRadius: CGFloat = 15
    
    func path(in rect: CGRect) -> Path {
        let horizontalRect = CGRect(x: rect.minX, y: rect.midY - thickness / 2, width: rect.width, height: thickness)
        let verticalRect = CGRect(x: rect.midX - thickness / 2, y: rect.minY, width: thickness, height: rect.height)
        let path = UIBezierPath(roundedRect: horizontalRect, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        
        path.append(UIBezierPath(roundedRect: verticalRect, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: cornerRadius, height: cornerRadius)))
        
        return Path(path.cgPath)
    }
}
