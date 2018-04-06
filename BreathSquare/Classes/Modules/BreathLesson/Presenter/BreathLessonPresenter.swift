//
//  BreathLessonPresenter.swift
//  BreathSquare
//
//  Created by Serg Tsarikovskiy on 18.03.2018.
//  Copyright © 2018 Serg Tsarikovskiy. All rights reserved.
//

import Foundation

class BreathLessonPresenter {
  weak var view: BreathLessonViewInput!
  var interactor: BreathLessonInteractorInput!

  var breathModels = [Breath]() {
    didSet {
      view.updateBreathSquare(animations: breathModels)
    }
  }
}

extension BreathLessonPresenter: BreathLessonViewOutput {

  func viewDidLoad() {
    interactor.loadJson()
  }
}

extension BreathLessonPresenter: BreathLessonInteractorOutput {
  func didLoad(status: LoaderStatus) {
    switch status {
    case .initializing: break

    case .success(let models):
      breathModels = models


    case .failure(let error):
      print("Error = \(String(describing: error))")
    }
  }
}
