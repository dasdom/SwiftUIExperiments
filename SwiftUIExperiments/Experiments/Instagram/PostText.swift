//  Created by dasdom on 23.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct PostText : View {
  
  let accountName: String
  let text: String
  
  var body: some View {
    HStack {
      Group {
        Text("\(accountName) ")
          .bold()
          .font(.footnote)
          .fontWeight(.medium)
          + Text(text)
            .font(.footnote)
            .fontWeight(.medium)
        }
        .lineLimit(nil)
      
      Spacer()
    }
  }
}
