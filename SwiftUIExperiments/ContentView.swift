//  Created by dasdom on 15.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct ContentView : View {
  var body: some View {
    NavigationView {
      List {
        NavigationLink(destination: Calculator()) {
          ExperimentRow(title: "Calculator", imageName: "calculator")
        }
        NavigationLink(destination: iOSCalculator()) {
          ExperimentRow(title: "iOS Calculator", imageName: "ios_calculator")
        }
        NavigationLink(destination: Profile()) {
          ExperimentRow(title: "Profile", imageName: "profile")
        }
        NavigationLink(destination: TwitterTimeline()) {
          ExperimentRow(title: "Twitter Timeline", imageName: "twitter_feed")
        }
        NavigationLink(destination: MailInbox()) {
          ExperimentRow(title: "Mail Inbox", imageName: "mail_inbox")
        }
        NavigationLink(destination: InstagramFeed()) {
          ExperimentRow(title: "Instagram", imageName: "instagram")
        }
      }
      .navigationBarTitle(Text("SwiftUI Experiments"))
    }
  }
}

