//
//  BreathLessonViewController.swift
//  BreathSquare
//
//  Created by Serg Tsarikovskiy on 17.03.2018.
//  Copyright © 2018 Serg Tsarikovskiy. All rights reserved.
//

import UIKit

class BreathLessonViewController: UIViewController {

  // MARK: Outlets

  @IBOutlet private weak var breathView: SquareView!

  // MARK: Properties

  var output: BreathLessonViewOutput!

  // MARK: Lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()

    output.viewDidLoad()
  }
}

extension BreathLessonViewController: BreathLessonViewInput {
  func updateBreathSquare(animations: [Breath]) {
    breathView.update(animationViewModels: animations)
  }
}
