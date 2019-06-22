//  Created by dasdom on 16.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct RemindersOnbording : View {
  var body: some View {
    List {
      HStack(alignment: .center) {
        Spacer()
        
        Text("Welcome to\nReminders")
          .font(.largeTitle)
          .lineLimit(2)
          .multilineTextAlignment(.center)

        Spacer()
      }
      .background(Color.red)
      }
      .background(Color.yellow)
      .navigationBarTitle(Text("Onboarding Reminders"), displayMode: .inline)
  }
}

#if DEBUG
struct RemindersOnbording_Previews : PreviewProvider {
  static var previews: some View {
    RemindersOnbording()
  }
}
#endif
