//  Created by dasdom on 13.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import Foundation

enum TweetBodyStyle {
  case text
  case mention
  case link
  case hashtag
}

struct TweetBodyPart {
  let id = UUID()
  let text: String
  let type: TweetBodyStyle
}

class Tweet {
  let id = UUID()
  let avatarImageName : String
  let username: String
  let handle: String
  let time: Date
  let tweetBodyParts: [TweetBodyPart]
  let quotedTweet: Tweet?
  
  init(avatarImageName: String, username: String, handle: String, time: Date, tweetBody: String, quotedTweet: Tweet? = nil) {
    
    self.avatarImageName = avatarImageName
    self.username = username
    self.handle = handle
    self.time = time
    self.tweetBodyParts = [TweetBodyPart(text: tweetBody, type: .text)]
    self.quotedTweet = quotedTweet
  }
  
  init(avatarImageName: String, username: String, handle: String, time: Date, tweetBody: [TweetBodyPart], quotedTweet: Tweet? = nil) {
    
    self.avatarImageName = avatarImageName
    self.username = username
    self.handle = handle
    self.time = time
    self.tweetBodyParts = tweetBody
    self.quotedTweet = quotedTweet
  }
  
  func timeString() -> String {
    let minutes = -Int(time.timeIntervalSinceNow/60.0)
    return "\(minutes) m"
  }
  
}
