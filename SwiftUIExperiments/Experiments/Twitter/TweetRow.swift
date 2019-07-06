//  Created by dasdom on 13.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct TweetRow : View {
  
  let tweet: Tweet
  
  var body: some View {
    HStack(alignment: .top) {
      Image(tweet.avatarImageName)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .clipShape(Circle())
        .frame(minWidth: 0, maxWidth: 60, minHeight: 0, maxHeight: 60)
      
      VStack(alignment: .leading, spacing: 5) {
        HStack {
          Text(tweet.username)
            .font(.footnote)
            .bold()
          
          Text("@\(tweet.handle)")
            .font(.footnote)
            .foregroundColor(.gray)
          
          Text(tweet.timeString())
            .font(.footnote)
            .foregroundColor(.gray)
          
          Spacer()
          
          Image(systemName: "chevron.down")
            .font(.footnote)
            .foregroundColor(.gray)
        }
        
        Group {
          
          TweetBody(tweet: tweet)
          
          HStack(spacing: 40) {
            Image(systemName: "bubble.left")
            
            HStack(spacing: 3) {
              Image(systemName: "arrow.2.circlepath")
              Text("3")
            }
            
            HStack(spacing: 3) {
              Image(systemName: "heart")
              Text("8")
            }
          }
            .font(.footnote)
            .foregroundColor(.gray)
        }
      }
      }
      .padding([.top, .bottom], 3)
  }
}
