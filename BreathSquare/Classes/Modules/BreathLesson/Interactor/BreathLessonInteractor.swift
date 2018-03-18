//
//  BreathLessonInteractor.swift
//  BreathSquare
//
//  Created by Serg Tsarikovskiy on 18.03.2018.
//  Copyright © 2018 Serg Tsarikovskiy. All rights reserved.
//

import Foundation

enum LoaderStatus {
  case initializing
  case success([Breath])
  case failure(Error)
}

class BreathLessonInteractor {

  weak var output: BreathLessonInteractorOutput?
  private var status: LoaderStatus = .initializing {
    didSet {
      output?.didLoad(status: status)
    }
  }

  lazy var dataLoaderService: DataLoaderService = {
    return DataLoaderServiceImpl()
  }()
}

extension BreathLessonInteractor: BreathLessonInteractorInput {
  func loadJson() {
    dataLoaderService.loadBreathJson { result in
      switch result {
      case .success(let models):
        guard let models = models as? [Breath] else { return }
        status = .success(models)

      case .failure(let error):
        status = .failure(error!)
      }
    }
  }
}
