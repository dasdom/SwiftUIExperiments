//  Created by dasdom on 22.06.19.
//  Copyright © 2019 dasdom. All rights reserved.
//

import SwiftUI

struct InstagramFeed : View {
  
  let font = Font.system(size: 22).weight(.light)
  
  var body: some View {
    List {
      InstagramPostRow()
        .listRowInsets(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
      }
      .navigationBarTitle(Text("Instagram"), displayMode: .inline)
      .navigationBarItems(trailing:
        HStack(spacing: 16) {
          Group {
            Image(systemName: "tv")
            Image(systemName: "paperplane")
            }
            .font(font)
        }
    )
  }
}
