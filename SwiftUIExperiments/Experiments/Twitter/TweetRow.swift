//  Created by dasdom on 13.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct TweetRow : View {
  
  let tweet: Tweet
  
  var body: some View {
    HStack(alignment: .top) {
      tweet.avatar
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(minWidth: 0, maxWidth: 60, minHeight: 0, maxHeight: 60)
        .cornerRadius(5)
      
      VStack(alignment: .leading, spacing: 5) {
        HStack {
          Text(tweet.handle)
            .font(.footnote)
            .bold()
          
          Spacer()
          
          Text(tweet.timeString())
            .font(.footnote)
        }
        
        Group {
          Text(tweet.tweetBody)
            .lineLimit(nil)
            .font(.body)
          //            .fontWeight(.light)
          
          if tweet.quotedTweet != nil {
            VStack(alignment: .leading, spacing: 3) {
              HStack {
              Text(tweet.quotedTweet!.handle)
                .font(.footnote)
                .bold()
                
                Spacer()
              }
              
              Text(tweet.quotedTweet!.tweetBody)
                .lineLimit(nil)
                .font(.body)
              
              }
              .padding(5)
              .frame(minWidth: 0, maxWidth: .infinity)
              .background(Color(white: 0.9))
          }
        }
      }
      }
      .padding([.top, .bottom], 3)
  }
}

