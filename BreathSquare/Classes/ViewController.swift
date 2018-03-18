//
//  ViewController.swift
//  BreathSquare
//
//  Created by Serg Tsarikovskiy on 17.03.2018.
//  Copyright © 2018 Serg Tsarikovskiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var models = [Breath]()

  @IBOutlet weak var breathView: SquareView!
  override func viewDidLoad() {
    super.viewDidLoad()

    if let jsonUrl = Bundle.main.url(forResource: "breath", withExtension: "json") {
      do {
        let data = try Data(contentsOf: jsonUrl)
        let decoder = JSONDecoder()
        models = try decoder.decode([Breath].self, from: data)
        print("models: \(models)")

      } catch {
        print("error: \(error)")
      }
    }
  }
}

