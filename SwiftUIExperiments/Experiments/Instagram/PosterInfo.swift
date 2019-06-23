//  Created by dasdom on 23.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct PosterInfo : View {
  
  let imageName: String
  let accountName: String
  
  var body: some View {
    HStack {
      Avatar(imageName: imageName)
      
      Text(accountName)
        .font(.footnote)
        .fontWeight(.medium)
      
      Spacer()
      
      Image(systemName: "ellipsis")
        .padding(3)
    }    }
}

