//
//  Breath.swift
//  BreathSquare
//
//  Created by Serg Tsarikovskiy on 17.03.2018.
//  Copyright © 2018 Serg Tsarikovskiy. All rights reserved.
//

import Foundation

enum BreathState: String {
  case inhale = "inhale"
  case exhale = "exhale"
  case hold = "hold"
  case unknown
}

struct Breath {
  let state: BreathState
  let duration: Int
  let colorHex: String
}

extension Breath: Decodable {
  enum CodingKeys: String, CodingKey {
    case state = "type"
    case duration = "duration"
    case color = "color"
  }

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    let state = try container.decode(String.self, forKey: .state)
    let duration = try container.decode(Int.self, forKey: .duration)
    let colorHex = try container.decode(String.self, forKey: .color)

    self.init(state: BreathState(rawValue: state) ?? .unknown, duration: duration, colorHex: colorHex)
  }
}
