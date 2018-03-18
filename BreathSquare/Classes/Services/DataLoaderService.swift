//
//  DataLoaderService.swift
//  BreathSquare
//
//  Created by Serg Tsarikovskiy on 18.03.2018.
//  Copyright © 2018 Serg Tsarikovskiy. All rights reserved.
//

import Foundation

enum Result {
  case success(Any?)
  case failure(Error?)
}

protocol DataLoaderService {
  func loadBreathJson(completion: (Result) -> ())
}
