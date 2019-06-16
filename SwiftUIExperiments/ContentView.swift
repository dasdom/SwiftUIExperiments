//  Created by dasdom on 15.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct ContentView : View {
  var body: some View {
    NavigationView {
      List {
        NavigationButton(destination: Calculator()) {
          Text("Calculator")
        }
        NavigationButton(destination: iOSCalculator()) {
          Text("iOS Calculator")
        }
        NavigationButton(destination: Profile()) {
          Text("Profile")
        }
        NavigationButton(destination: TwitterTimeline()) {
          Text("Twitter Timeline")
        }
      }
      .navigationBarTitle(Text("SwiftUI Experiments"))
    }
  }
}

