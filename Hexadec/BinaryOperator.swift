//  Created by dasdom on 01.08.20.
//  Copyright © 2020 dasdom. All rights reserved.
//

import Foundation

enum BinaryOperator: Int {
  case or = 1
  case and = 2
  case xor = 3
  
  func calc(lhs: Int, rhs: Int) -> Int {
    switch self {
    case .or:
      return lhs | rhs
    case .and:
      return lhs & rhs
    case .xor:
      return lhs ^ rhs
    }
  }
}
