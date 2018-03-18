//
//  NibView.swift
//  BreathSquare
//
//  Created by Serg Tsarikovskiy on 18.03.2018.
//  Copyright © 2018 Serg Tsarikovskiy. All rights reserved.
//

import UIKit

class NibView: UIView {
  var view: UIView!
  override init(frame: CGRect) {
    super.init(frame: frame)

    // Setup view from .xib file
    xibSetup()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)

    // Setup view from .xib file
    xibSetup()
  }
}

private extension NibView {

  func xibSetup() {
    backgroundColor = UIColor.clear
    view = loadNib()
    // use bounds not frame or it'll be offset
    view.frame = bounds
    // Adding custom subview on top of our view
    addSubview(view)

    view.translatesAutoresizingMaskIntoConstraints = false
    view.topAnchor.constraint(equalTo: topAnchor).isActive = true
    view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    view.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    view.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
  }
}

