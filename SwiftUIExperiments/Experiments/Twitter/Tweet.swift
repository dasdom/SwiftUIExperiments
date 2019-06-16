//  Created by dasdom on 13.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import Foundation
import SwiftUI

class Tweet {
  let id = UUID()
  let avatar : Image
  let handle: String
  let time: Date
  let tweetBody: String
  let quotedTweet: Tweet?
  
  init(avatar: Image, handle: String, time: Date, tweetBody: String, quotedTweet: Tweet? = nil) {
    
    self.avatar = avatar
    self.handle = handle
    self.time = time
    self.tweetBody = tweetBody
    self.quotedTweet = quotedTweet
  }
  
  func timeString() -> String {
    let minutes = -Int(time.timeIntervalSinceNow/60.0)
    return "\(minutes) m"
  }
}
