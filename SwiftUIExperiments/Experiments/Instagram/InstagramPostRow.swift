//  Created by dasdom on 22.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct InstagramPostRow : View {
  
  let font = Font.system(size: 24).weight(.light)
  
  var body: some View {
    VStack(spacing: 3) {
      PosterInfo(imageName: "avatar", accountName: "swiftandpainless")
        .padding([.leading, .trailing], 8)
      
      VStack(spacing: 16) {
        Image("instagram_post")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(minWidth: 0, maxWidth: .infinity)
        
        ActionBar(font: font)
          .padding([.leading, .trailing], 14)
        
        VStack(spacing: 8) {
          HStack {
            Text("1.337 likes")
              .font(.footnote)
              .fontWeight(.medium)
            
            Spacer()
          }
          
          PostText(accountName: "swiftandpainless ", text: "This buddy here just told me where to get the best tofu burgers. Thanks buddy!")
          
          HStack {
            Text("View all 42 comments")
              .font(.footnote)
              .fontWeight(.medium)
              .foregroundColor(.gray)
            
            Spacer()
          }
        }
        .padding([.leading, .trailing], 14)
      }
    }
  }
}


