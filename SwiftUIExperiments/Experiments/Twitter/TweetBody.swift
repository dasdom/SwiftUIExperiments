//  Created by dasdom on 06.07.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct TweetBody : View {
  
  let tweet: Tweet
  
  private func text() -> Text {
    let text = tweet.tweetBodyParts.reduce(Text("").foregroundColor(.black)) { (text, part) -> Text in
      text + Text(part.text).foregroundColor(partColor(part: part))
    }
    
    return text
  }
  
  private func partColor(part: TweetBodyPart) -> Color {
    switch part.type {
    case .link:
      fallthrough
    case .hashtag:
      return .blue
    default:
      return .black
    }
  }
  
  var body: some View {
    
    VStack {
      text()
        .lineLimit(nil)
        .font(.footnote)
    
      HStack {
        Image("bookcover_small")
          .resizable()
          .aspectRatio(contentMode: .fit)
        
        VStack(alignment: .leading) {
          Text("TDD Fake Book for iOS")
            .font(.footnote)
          
//          Text("leanpub.com")
//            .font(.footnote)
//            .foregroundColor(.gray)
        }
        .padding([.trailing], 8)
      }
      .cornerRadius(10)
//      .border(Color(white: 0.95), width: 1, cornerRadius: 10)
      .frame(minWidth: 0, maxWidth: .infinity)
    }
  }
}
