//  Created by dasdom on 01.08.20.
//  Copyright © 2020 dasdom. All rights reserved.
//

import SwiftUI

struct ResultView: View {
  
  var result: Int
  
  var body: some View {
    VStack(spacing: 5) {
      HStack {
        Spacer()
        Text("Result")
      }
      HStack {
        Spacer()
        Text("\(result)")
      }
      HStack {
        Spacer()
        Text("0x\(Integer.hex(result))")
      }
      HStack {
        Spacer()
        Text("0b\(Integer.binary(result))")
      }
    } // VStack
      .multilineTextAlignment(.trailing)
  }
}

struct ResultView_Previews: PreviewProvider {
  static var previews: some View {
    ResultView(result: 2)
  }
}
