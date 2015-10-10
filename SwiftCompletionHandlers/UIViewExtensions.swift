//
//  UIViewExtensions.swift
//  SwiftTestProject
//
//  Created by Duncan Champney on 4/23/15.
//  Copyright (c) 2015 Duncan Champney. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
extension UIView
{
  @IBInspectable
  var borderWidth: CGFloat
    {
    get
    {
      return self.layer.borderWidth
    }
    set
    {
      self.layer.borderWidth = newValue
    }
  }
  @IBInspectable
  var cornerRadius: CGFloat
    {
    get
    {
      return self.layer.cornerRadius
    }
    set
    {
      self.layer.cornerRadius = newValue
    }
  }
  
  @IBInspectable
  var borderColor: UIColor
    {
    get
    {
      return UIColor(CGColor: self.layer.borderColor!)
    }
    set
    {
      self.layer.borderColor = newValue.CGColor
    }
  }
}