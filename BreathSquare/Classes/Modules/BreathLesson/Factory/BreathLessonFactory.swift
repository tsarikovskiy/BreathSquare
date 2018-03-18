//
//  BreathLessonFactory.swift
//  BreathSquare
//
//  Created by Serg Tsarikovskiy on 18.03.2018.
//  Copyright © 2018 Serg Tsarikovskiy. All rights reserved.
//

import UIKit

struct BreathLessonFactory {
  static func make() -> UIViewController {
    return makeBreathLessonViewController()
  }
}

private extension BreathLessonFactory {
  struct C {
    static let storyboardName = "BreathLesson"
  }

  static func makeBreathLessonViewController() -> UIViewController{
    let storyboard = UIStoryboard(name: C.storyboardName, bundle: nil)
    let viewController = storyboard.instantiateInitialViewController() as! BreathLessonViewController

    let presenter = BreathLessonPresenter()
    viewController.output = presenter

    let interactor = BreathLessonInteractor()
    interactor.output = presenter

    presenter.view = viewController
    presenter.interactor = interactor

    return viewController
  }
}
