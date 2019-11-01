//  Created by dasdom on 15.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct TwitterTimeline : View {
  let tweets = [
//    Tweet(avatarImageName: "avatar",
//          username: "Dominik Hauser",
//          handle: "dasdom",
//          time: Date(timeIntervalSinceNow: -2.0 * 60.0),
//          tweetBody: "My Fake Book about Test-Driven iOS Development is finished.\n\nThis book mainly contains just the code. If you are the kind of person who skips the text in blog posts to just read the code, this book is for you."),
    Tweet(avatarImageName: "avatar",
          username: "Dominik Hauser",
          handle: "dasdom",
          time: Date(timeIntervalSinceNow: -2.0 * 60.0),
          tweetBody: [TweetBodyPart(text: "My Fake Book about Test-Driven iOS Development is finished.\n\nThis book mainly contains just the code. If you are the kind of person who skips the text in blog posts to just read the code, this book is for you.\n\n", type: .text),
                      TweetBodyPart(text: "leanpub.com/tddfakebookforios", type: .link),
                      TweetBodyPart(text: "\n\nThe price will go up soon.\n\n", type: .text),
                      TweetBodyPart(text: "#TDD", type: .hashtag),
                      TweetBodyPart(text: " ", type: .text),
                      TweetBodyPart(text: "#Swift", type: .hashtag)
      ])
  ]
  
  var body: some View {
    List {
      ForEach(tweets, id: \.id) { tweet in
        TweetRow(tweet: tweet)
      }
      }
      .navigationBarTitle(Text("Twitter Timeline"), displayMode: .inline)
  }
}
