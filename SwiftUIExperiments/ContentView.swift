//  Created by dasdom on 15.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct ContentView : View {
  var body: some View {
    NavigationView {
      List {
        NavigationButton(destination: Calculator()) {
          ExperimentRow(title: "Calculator", imageName: "calculator")
        }
        NavigationButton(destination: iOSCalculator()) {
          ExperimentRow(title: "iOS Calculator", imageName: "ios_calculator")
        }
        NavigationButton(destination: Profile()) {
          ExperimentRow(title: "Profile", imageName: "profile")
        }
        NavigationButton(destination: TwitterTimeline()) {
          ExperimentRow(title: "Twitter Timeline", imageName: "twitter_feed")
        }
        NavigationButton(destination: MailInbox()) {
          ExperimentRow(title: "Mail Inbox", imageName: "mail_inbox")
        }
        NavigationButton(destination: InstagramFeed()) {
          ExperimentRow(title: "Instagram", imageName: "instagram")
        }
      }
      .navigationBarTitle(Text("SwiftUI Experiments"))
    }
  }
}

