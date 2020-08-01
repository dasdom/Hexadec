//  Created by dasdom on 01.08.20.
//  Copyright © 2020 dasdom. All rights reserved.
//

import SwiftUI

struct IntegerView: View {
  
  @ObservedObject var integer: Integer

  var body: some View {
    VStack(spacing: 5) {
      TextField("Input", text: $integer.rawInput)
      HStack {
        Spacer()
        Text("\(integer.value)")
      }
      HStack {
        Spacer()
        Text("0x\(Integer.hex(integer.value))")
      }
      HStack {
        Spacer()
        Text("0b\(Integer.binary(integer.value))")
      }
    } // VStack
      .multilineTextAlignment(.trailing)
  }
}

struct IntegerView_Previews: PreviewProvider {
  static var previews: some View {
    IntegerView(integer: Integer())
  }
}
