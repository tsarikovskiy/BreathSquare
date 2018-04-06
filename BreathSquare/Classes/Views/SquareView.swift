//
//  SquareView.swift
//  BreathSquare
//
//  Created by Serg Tsarikovskiy on 17.03.2018.
//  Copyright © 2018 Serg Tsarikovskiy. All rights reserved.
//

import UIKit

class SquareView: NibView {

  @IBOutlet private weak var stateLabel: UILabel!
  @IBOutlet private weak var durationLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
}

extension SquareView {
  func update(animationViewModels: [Breath]) {

  }
}
