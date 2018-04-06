//
//  UIColor+Hex.swift
//  BreathSquare
//
//  Created by Serg Tsarikovskiy on 18.03.2018.
//  Copyright © 2018 Serg Tsarikovskiy. All rights reserved.
//

import UIKit

public extension UIColor {
  public convenience init(hex6: UInt32, alpha: CGFloat = 1) {
    let divisor = CGFloat(255)
    let red = CGFloat((hex6 & 0xFF0000) >> 16) / divisor
    let green = CGFloat((hex6 & 0x00FF00) >> 8) / divisor
    let blue = CGFloat( hex6 & 0x0000FF) / divisor
    self.init(red: red, green: green, blue: blue, alpha: alpha)
  }
}
