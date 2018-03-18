//
//  DataLoaderServiceImpl.swift
//  BreathSquare
//
//  Created by Serg Tsarikovskiy on 18.03.2018.
//  Copyright © 2018 Serg Tsarikovskiy. All rights reserved.
//

import Foundation

class DataLoaderServiceImpl: DataLoaderService {
  struct C {
    static let breathJsonName = "breath"
  }

  func loadBreathJson(completion: (Result) -> ()) {
    if let jsonUrl = Bundle.main.url(forResource: C.breathJsonName, withExtension: "json") {
      do {
        let data = try Data(contentsOf: jsonUrl)
        let decoder = JSONDecoder()
        let models = try decoder.decode([Breath].self, from: data)
        completion(.success(models))
      } catch {
        completion(.failure(error))
      }
    }
  }
}
