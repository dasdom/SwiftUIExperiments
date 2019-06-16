//  Created by dasdom on 15.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct TwitterTimeline : View {
  let tweets = [Tweet(avatar: Image("avatar"),
                      handle: "dasdom",
                      time: Date(timeIntervalSinceNow: -2.0 * 60),
                      tweetBody: "SwiftUI is so awesome! Looking forward to rewrite all UI code.",
                      quotedTweet: Tweet(avatar: Image("dasdom"),
                                         handle: "tim_cook",
                                         time: Date(timeIntervalSinceNow: -2.0 * 60 * 60),
                                         tweetBody: "Check out my SwiftUI tutorial. It's awesome!")),
                Tweet(avatar: Image("avatar"),
                      handle: "dasdom",
                      time: Date(timeIntervalSinceNow: -5.0 * 60),
                      tweetBody: "Test test. Is this thing on?")]
  
  var body: some View {
    List {
      ForEach(tweets.identified(by: \.id)) { tweet in
        TweetRow(tweet: tweet)
      }
    }
    .navigationBarTitle(Text("Twitter Timeline"), displayMode: .inline)
  }
}
