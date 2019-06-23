//  Created by dasdom on 23.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct ActionBar : View {
  
  let font: Font

  var body: some View {
    HStack(spacing: 16) {
      Group {
        Image(systemName: "heart")
        Image(systemName: "bubble.right")
        Image(systemName: "paperplane")
        
        Spacer()
        
        Image(systemName: "bookmark")
      }
      .font(font)
    }
  }
}
