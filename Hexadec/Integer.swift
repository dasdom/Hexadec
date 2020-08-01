//  Created by dasdom on 01.08.20.
//  Copyright © 2020 dasdom. All rights reserved.
//

import Foundation
import Combine

class Integer: ObservableObject {
  @Published var value: Int = 0
  @Published var rawInput: String = "" {
    didSet {
      let scanner = Scanner(string: rawInput)
      if rawInput.hasPrefix("0x") {
        var result: UInt64 = 0
        if scanner.scanHexInt64(&result) {
          value = Int(result)
        }
      } else {
        var result: Int = 0
        if scanner.scanInt(&result) {
          value = result
        }
      }
    }
  }
  @Published var hex: String = ""
  
  static func hex(_ input: Int) -> String {
    return String(format: "%0x", input)
  }
  
  static func binary(_ input: Int) -> String {
    let binaryResult = String(input, radix: 2)
    return pad(string: binaryResult, toSize: 8)
  }
  
  // from https://stackoverflow.com/a/26181323/498796
  static func pad(string : String, toSize: Int) -> String {
    var padded = string
    for _ in 0..<(toSize - string.count) {
      padded = "0" + padded
    }
      return padded
  }
}
