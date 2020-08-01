//  Created by dasdom on 31.07.20.
//  Copyright © 2020 dasdom. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject var integer1 = Integer()
  @ObservedObject var integer2 = Integer()
  @State var operatorInt: Int = 1
  @State var result: Int = 0

  var body: some View {
    HStack(spacing: 10) {
      IntegerView(integer: integer1)
      VStack {
        Picker(selection: $operatorInt, label: EmptyView()) {
          Text("| (or)").tag(1)
          Text("& (and)").tag(2)
          Text("^ (xor)").tag(3)
        }
      }
      IntegerView(integer: integer2)
      ResultView(result: BinaryOperator(rawValue: operatorInt)!.calc(lhs: integer1.value, rhs: integer2.value))
    } // HStack
    .font(Font.headline.monospacedDigit())
    .padding()
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
