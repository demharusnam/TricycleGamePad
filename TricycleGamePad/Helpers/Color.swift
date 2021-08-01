//
//  Color.swift
//  TricycleGamePad
//
//  Created by Mansur Ahmed on 2021-08-01.
//

import SwiftUI

// MARK: Color Extension
extension Color {
    /// Custom initializer for hex values. Does NOT account for all edge cases.
    init(hex: String, opacity: Double = 1) {
        precondition(hex.count == 6, "Hex values must be exactly 6 characters.")
        
        let redHex = hex[hex.startIndex...hex.index(hex.startIndex, offsetBy: 1)]
        let greenHex = hex[hex.index(hex.startIndex, offsetBy: 2)...hex.index(hex.startIndex, offsetBy: 3)]
        let blueHex = hex[hex.index(hex.startIndex, offsetBy: 4)...hex.index(hex.startIndex, offsetBy: 5)]
        
        let red = Double(Int(redHex, radix: 16)!)
        let green = Double(Int(greenHex, radix: 16)!)
        let blue = Double(Int(blueHex, radix: 16)!)
        
        
        self.init(red: red / 255, green: green / 255, blue: blue / 255, opacity: opacity)
    }
}
